/* The modified ArvFake component, allowing to stream from 
 * actual web camera.
 * Requires patching the #error block in original source
 * otherwise problems arise during build.
 * Authors:
 *   Maksym Holub (maks.golub.1991@gmail.com)
 *   Oleh Kuzhylnyi (kuzhylny.oleg@gmail.com)
 *   Oleksandr Ostrianko (sasha_ostrianko@mail.ru)
 *   Tymofii Khodniev (t.khodniev@kpi.ua)
 * This source is distibuted under BSD license and
 * makes use of ARAVIS library
 * (https://github.com/AravisProject/aravis)
 * ARAVIS is distibuted under LGPL v2+ license, which
 * means its license allows developers and companies 
 * to use and integrate it into their own software 
 * without being required by the terms of a strong 
 * copyleft license to release the source code of their 
 * own components.
 * Make sure to see the original LICENSE of ARAVIS
 */
#include "arvbufferprivate.h"
#include <arv.h>
#include <arvgvcp.h>
#include <arvgvsp.h>
#include <ifaddrs.h>
#include <net/if.h>
#include <stdlib.h>
#include <string.h>

#include <assert.h>
#include <math.h>
#include <stdio.h>

#include <getopt.h> /* getopt_long() */

#include <errno.h>
#include <fcntl.h> /* low-level i/o */
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>

#include <linux/videodev2.h>
#include <stdbool.h>
#include <stdint.h>

#define CLEAR(x) memset(&(x), 0, sizeof(x))
#define LOG(str, ...) fprintf(stderr, str "\n", ##__VA_ARGS__)

struct buffer {
    void **start;
    size_t *length;
};

unsigned long long width = 0, height = 0, bufsize = 0;

enum captype {
    captype_regular = 0,    // V4L2_CAP_VIDEO_CAPTURE + V4L2_CAP_STREAMING
    captype_mplane    // V4L2_CAP_VIDEO_CAPTURE_MPLANE + V4L2_CAP_STREAMING
};

enum { FIX_WIDTH = 1920, FIX_HEIGHT = 1080, FIX_NPLANES = 3 };

static char *dev_name;
static int fd = -1;
struct buffer *buffers;
static unsigned int n_buffers;
enum captype captype;
struct v4l2_format fmt;

// Command-line arguments
static char *arv_option_interface_name = "eth0";
static char *arv_option_camera_devname = "/dev/video0";
static char *arv_option_debug_domains = NULL;
static bool arv_option_is_bw = false;
static bool arv_option_is_force = false;

static const GOptionEntry arv_option_entries[] = {
    { "interface", 'i', 0, G_OPTION_ARG_STRING, &arv_option_interface_name,
      "Listening interface name", "interface_id" },
    { "camera", 'c', 0, G_OPTION_ARG_STRING, &arv_option_camera_devname,
      "camera device (i.e. /dev/video0)", "camdev" },
    { "bw", 0, 0, G_OPTION_ARG_NONE, &arv_option_is_bw,
      "black and white mode (Mono8)", NULL },
    { "force", 'f', 0, G_OPTION_ARG_NONE, &arv_option_is_force,
      "force feature set", NULL },
    { "debug", 'd', 0, G_OPTION_ARG_STRING, &arv_option_debug_domains, NULL,
      "category[:level][,...]" },
    { NULL }
};

static void errno_exit(const char *s)
{
    fprintf(stderr, "%s error %d, %s\n", s, errno, strerror(errno));
    exit(EXIT_FAILURE);
}

static int xioctl(int fh, int request, void *arg)
{
    int r;

    do {
        r = ioctl(fh, request, arg);
    } while (-1 == r && EINTR == errno);

    return r;
}

int read_frame(void *dst)
{
    struct v4l2_buffer buf;
    void *frame;

    CLEAR(buf);

    buf.type = fmt.type;
    buf.memory = V4L2_MEMORY_MMAP;
    buf.length = fmt.fmt.pix_mp.num_planes;
    struct v4l2_plane planes[buf.length];
    if (captype == captype_mplane) {
        buf.m.planes = planes;
    }

    if (-1 == xioctl(fd, VIDIOC_DQBUF, &buf)) {
        switch (errno) {
        case EAGAIN:
            return 0;
        case EIO:
            /* Could ignore EIO, see spec. */
            /* fall through */
        default:
            errno_exit("VIDIOC_DQBUF");
        }
    }

    assert(buf.index < n_buffers);

    // process image
    if (captype == captype_regular) {
        char *p_dst = (char *)dst;
        char *p_src = (char *)(buffers[buf.index].start[0]);
        while (p_src < (char *)buffers[buf.index].start[0] + buf.bytesused) {
            *p_dst = *p_src;
            p_dst += 1;
            p_src += 2;
        }
    } else {
        memcpy(dst, buffers[0].start[0], bufsize);
    }

    if (-1 == xioctl(fd, VIDIOC_QBUF, &buf)) {
        errno_exit("VIDIOC_QBUF");
    }

    return 1;
}

void capture(void *dst)
{
    for (;;) {
        fd_set fds;
        struct timeval tv;
        int r;

        FD_ZERO(&fds);
        FD_SET(fd, &fds);
        /* Timeout. */
        tv.tv_sec = 2;
        tv.tv_usec = 0;

        r = select(fd + 1, &fds, NULL, NULL, &tv);

        if (-1 == r) {
            if (EINTR == errno)
                continue;
            errno_exit("select");
        }
        if (0 == r) {
            fprintf(stderr, "select timeout\n");
            exit(EXIT_FAILURE);
        }

        if (read_frame(dst))
            break;
    }
}

static void start_capturing(void)
{
    unsigned int i;
    enum v4l2_buf_type type;
    struct v4l2_buffer buf;

    if (captype == captype_regular) {
        for (i = 0; i < n_buffers && captype == captype_regular; ++i) {
            CLEAR(buf);
            buf.type = fmt.type;
            buf.memory = V4L2_MEMORY_MMAP;
            buf.index = i;
        }

        if (-1 == xioctl(fd, VIDIOC_QBUF, &buf))
            errno_exit("VIDIOC_QBUF");
    } else {
        CLEAR(buf);
        buf.type = fmt.type;
        buf.memory = V4L2_MEMORY_MMAP;
        buf.index = 0;

        buf.length = fmt.fmt.pix_mp.num_planes;
        struct v4l2_plane planes[buf.length];
        buf.m.planes = planes;

        if (-1 == xioctl(fd, VIDIOC_QBUF, &buf))
            errno_exit("VIDIOC_QBUF");
    }

    type = fmt.type;
    if (-1 == xioctl(fd, VIDIOC_STREAMON, &type))
        errno_exit("VIDIOC_STREAMON");
}

static void stop_capturing(void)
{
    enum v4l2_buf_type type;

    type = fmt.type;
    if (-1 == xioctl(fd, VIDIOC_STREAMOFF, &type))
        errno_exit("VIDIOC_STREAMOFF");
}

static void uninit_device(void)
{
    unsigned int i;

    for (i = 0; i < n_buffers; ++i) {
        if (captype == captype_mplane) {
            for (int j = 0; j < n_buffers; j++) {
                if (-1 == munmap(buffers[i].start[j], buffers[i].length[j]))
                    errno_exit("munmap (mplane)");
            }
        } else if (-1 == munmap(buffers[i].start[0], buffers[i].length[0])) {
            errno_exit("munmap (non-plane)");
        }
        free(buffers[i].start);
        free(buffers[i].length);
    }

    free(buffers);
}

static void init_device(void)
{
    // Xilinx supported flags:
    //	V4L2_CAP_VIDEO_CAPTURE_MPLANE
    //	V4L2_CAP_EXT_PIX_FORMAT
    //	V4L2_CAP_STREAMING
    //	V4L2_CAP_DEVICE_CAPS

    struct v4l2_capability cap;
    struct v4l2_cropcap cropcap;
    struct v4l2_crop crop;
    unsigned int min;

    if (-1 == xioctl(fd, VIDIOC_QUERYCAP, &cap)) {
        if (EINVAL == errno) {
            fprintf(stderr, "%s is not a V4L2 device\n", dev_name);
            exit(EXIT_FAILURE);
        } else {
            errno_exit("VIDIOC_QUERYCAP");
        }
    }

    if (!(cap.capabilities & V4L2_CAP_STREAMING)) {
        fprintf(stderr, "%s does not support streaming i/o\n", dev_name);
        exit(EXIT_FAILURE);
    }

    if (cap.capabilities & V4L2_CAP_VIDEO_CAPTURE_MPLANE) {
        captype = captype_mplane;
        LOG("Capture format set to *mplane* (flags: 0x%llx)", cap.capabilities);
    } else if (cap.capabilities & V4L2_CAP_VIDEO_CAPTURE) {
        captype = captype_regular;
        LOG("Capture format set to *regular* (flags: 0x%llx)", cap.capabilities);
    } else {
        fprintf(stderr,
                "%s does not support neither regular nor mplane capture\n",
                dev_name);
        exit(EXIT_FAILURE);
    }

    CLEAR(fmt);

    if (captype_regular == captype) {
        fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    } else if (captype_mplane == captype) {
        fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
    } else {
        LOG("Unknown capture type");
    }

    // partially fill the struct with reported capabilities
    if (-1 == xioctl(fd, VIDIOC_G_FMT, &fmt))
        errno_exit("VIDIOC_G_FMT");

    // apply fixtures in case of broken driver
    if (arv_option_is_force) {
        LOG("Applying forceful fixtures");
        fmt.fmt.pix_mp.width = FIX_WIDTH;
        fmt.fmt.pix_mp.height = FIX_HEIGHT;
        fmt.fmt.pix_mp.num_planes = FIX_NPLANES;
        fmt.fmt.pix_mp.pixelformat = V4L2_PIX_FMT_YUYV;
        fmt.fmt.pix_mp.field = V4L2_FIELD_NONE;
    }

    unsigned int _np1 = fmt.fmt.pix_mp.num_planes;
    printf("NUM PLANES: %u\n", _np1);
    LOG("Got from driver:\n\t"
        "type: 0x%lx (%s)\n\t"
        "resolution: %dx%d\n\t"
        "pixfmt: 0x%llx\n\t"
        "field: 0x%llx\n\t"
        "nplanes: %u\n",
        (long)(fmt.type), (captype == captype_regular ? "regular" : "mplane"),
        (int)(captype == captype_regular ? fmt.fmt.pix.width :
                                           +fmt.fmt.pix_mp.width),
        (int)(captype == captype_regular ? fmt.fmt.pix.height :
                                           fmt.fmt.pix_mp.height),
        (long int)(captype == captype_regular ? fmt.fmt.pix.pixelformat :
                                                fmt.fmt.pix_mp.pixelformat),
        (long int)(captype == captype_regular ? fmt.fmt.pix.field :
                                                fmt.fmt.pix_mp.field),
        (captype == captype_mplane ? _np1 : 0U));

    // set pixel format
    if (-1 == xioctl(fd, VIDIOC_S_FMT, &fmt))
        errno_exit("VIDIOC_S_FMT");
    /* Note VIDIOC_S_FMT may change width and height. */

    /* Buggy driver paranoia.
    min = fmt.fmt.pix.width * 2;
    if (fmt.fmt.pix.bytesperline < min)
        fmt.fmt.pix.bytesperline = min;
    min = fmt.fmt.pix.bytesperline * fmt.fmt.pix.height;
    if (fmt.fmt.pix.sizeimage < min)
        fmt.fmt.pix.sizeimage = min;
    printf("Pixel format: \"%c%c%c%c\" resolution: %dx%d\n", ((char *)&fmt.fmt.pix.pixelformat)[0],
           ((char *)&fmt.fmt.pix.pixelformat)[1], ((char *)&fmt.fmt.pix.pixelformat)[2],
           ((char *)&fmt.fmt.pix.pixelformat)[3], fmt.fmt.pix.width, fmt.fmt.pix.height);
	*/

    // init mmap
    struct v4l2_requestbuffers req;
    CLEAR(req);

    req.type = fmt.type;
    req.memory = V4L2_MEMORY_MMAP;
    // request exact nplanes if mplane type, on normal use 4
    int count = (captype_mplane == captype) ? fmt.fmt.pix_mp.num_planes : 3;
    req.count = count;

    if (-1 == xioctl(fd, VIDIOC_REQBUFS, &req)) {
        if (EINVAL == errno) {
            fprintf(stderr,
                    "Failed to request buffers. Probably %s does not support memory mapping\n",
                    dev_name);
            exit(EXIT_FAILURE);
        } else {
            errno_exit("VIDIOC_REQBUFS");
        }
    }

    if (req.count < count) {
        fprintf(stderr, "Insufficient buffer memory on %s\n", dev_name);
        exit(EXIT_FAILURE);
    }

    if (!(buffers = calloc(count, sizeof(*buffers))))
        goto buf_alloc_err;

    for (int i = 0; i < req.count; i++) {
        if (!(buffers[i].start = calloc(count, sizeof(*buffers[i].start))))
            goto buf_alloc_err;
        if (!(buffers[i].length = calloc(count, sizeof(*buffers[i].length))))
            goto buf_alloc_err;
    }

    // query buffers
    for (n_buffers = 0; n_buffers < count; ++n_buffers) {
        struct v4l2_buffer buf;
        struct v4l2_plane planes[count];

        CLEAR(buf);
        CLEAR(planes);

        buf.type = fmt.type;
        buf.memory = V4L2_MEMORY_MMAP;
        buf.index = n_buffers;

        if (captype_mplane == captype) {
            buf.m.planes = planes;
            buf.length = req.count;
        }

        if (-1 == xioctl(fd, VIDIOC_QUERYBUF, &buf)) {
            errno_exit("VIDIOC_QUERYBUF");
        }

        if (captype_mplane != captype) {
            buffers[n_buffers].length[0] = buf.length;
            buffers[n_buffers].start[0] =
                    mmap(NULL, /* start anywhere */
                         buf.length, PROT_READ | PROT_WRITE, /* required */
                         MAP_SHARED, /* recommended */
                         fd, buf.m.offset);

            if (MAP_FAILED == buffers[n_buffers].start[0])
                errno_exit("mmap buffers (non-plane)");

            LOG("REGULAR Buffer #%d: len = %d, start = 0x%llx mmaped",
                (int)n_buffers, (int)buffers[n_buffers].length[0],
                (long long)buffers[n_buffers].start[0]);

            continue;
        }

        // in case of nplanes
        for (int i = 0; i < 1; i++) {
            buffers[n_buffers].length[i] = buf.m.planes[i].length;
            buffers[n_buffers].start[i] = mmap(NULL, buf.m.planes[i].length,
                                               PROT_READ | PROT_WRITE, MAP_SHARED,
                                               fd, buf.m.planes[i].m.mem_offset);
            if (MAP_FAILED == buffers[n_buffers].start[i]) {
                errno_exit("mmap buffers (plane)");
            }

            LOG("MPLANE Buffer #%d.%d: len = %ld, start = 0x%llx mmaped",
                (int)n_buffers, (int)i, (long)buffers[n_buffers].length[i],
                (long long)buffers[n_buffers].start[i]);
        }
    }

    LOG("MMAP OK...");

    return;

// err handlers
buf_alloc_err:
    fprintf(stderr, "Out of memory\n");
    exit(EXIT_FAILURE);
}

static void open_device(void)
{
    struct stat st;

    if (-1 == stat(dev_name, &st)) {
        fprintf(stderr, "Cannot identify '%s': %d, %s\n", dev_name, errno,
                strerror(errno));
        exit(EXIT_FAILURE);
    }

    if (!S_ISCHR(st.st_mode)) {
        fprintf(stderr, "%s is no device\n", dev_name);
        exit(EXIT_FAILURE);
    }

    fd = open(dev_name, O_RDWR /* required */ | O_NONBLOCK, 0);

    if (-1 == fd) {
        fprintf(stderr, "Cannot open '%s': %d, %s\n", dev_name, errno,
                strerror(errno));
        exit(EXIT_FAILURE);
    }
}

static void close_device(void)
{
    if (-1 == close(fd))
        errno_exit("close");

    fd = -1;
}

#define ARV_FAKE_GV_CAMERA_BUFFER_SIZE 655360

static gboolean cancel = FALSE;

static void set_cancel(int signal)
{
    cancel = TRUE;
}

typedef struct {
    ArvFakeCamera *camera;
    GPollFD gvcp_fds[2];
    guint n_gvcp_fds;

    GSocketAddress *controller_address;
    struct timespec controller_time;

    GSocket *gvcp_socket;
    GSocket *gvsp_socket;
    GSocket *discovery_socket;

    GThread *gvsp_thread;
    gboolean cancel;
} ArvFakeGvCamera;

gboolean _g_inet_socket_address_is_equal(GInetSocketAddress *a,
                                         GInetSocketAddress *b)
{
    GInetAddress *a_addr;
    GInetAddress *b_addr;
    char *a_str;
    char *b_str;
    gboolean result;

    if (!G_IS_INET_SOCKET_ADDRESS(a) || !G_IS_INET_SOCKET_ADDRESS(b))
        return FALSE;

    if (g_inet_socket_address_get_port(a) != g_inet_socket_address_get_port(b))
        return FALSE;

    a_addr = g_inet_socket_address_get_address(a);
    b_addr = g_inet_socket_address_get_address(b);

    a_str = g_inet_address_to_string(a_addr);
    b_str = g_inet_address_to_string(b_addr);

    /* TODO: find a better way to do inet address comparison */
    result = g_strcmp0(a_str, b_str) == 0;

    g_free(a_str);
    g_free(b_str);

    return result;
}

void *arv_fake_gv_camera_thread(void *user_data)
{
    ArvFakeGvCamera *gv_camera = user_data;
    ArvBuffer *image_buffer = NULL;
    GError *error = NULL;
    GSocketAddress *stream_address = NULL;
    void *packet_buffer;
    size_t packet_size;
    size_t payload = 0;
    guint16 block_id;
    ptrdiff_t offset;
    guint32 gv_packet_size;

    packet_buffer = g_malloc(bufsize);

    do {
        if (arv_fake_camera_get_control_channel_privilege(gv_camera->camera) == 0
            || arv_fake_camera_get_acquisition_status(gv_camera->camera) == 0) {
            if (stream_address != NULL) {
                g_object_unref(stream_address);
                stream_address = NULL;
                g_object_unref(image_buffer);
                image_buffer = NULL;
                arv_debug_stream_thread(
                        "[FakeGvCamera::stream_thread] Stop stream");
            }
            g_usleep(100000);
        } else {
            if (stream_address == NULL) {
                GInetAddress *inet_address;
                char *inet_address_string;

                stream_address =
                        arv_fake_camera_get_stream_address(gv_camera->camera);
                inet_address = g_inet_socket_address_get_address(
                        G_INET_SOCKET_ADDRESS(stream_address));
                inet_address_string = g_inet_address_to_string(inet_address);
                arv_debug_stream_thread(
                        "[FakeGvCamera::stream_thread] Start stream to %s (%d)",
                        inet_address_string,
                        g_inet_socket_address_get_port(
                                G_INET_SOCKET_ADDRESS(stream_address)));
                g_free(inet_address_string);

                payload = arv_fake_camera_get_payload(gv_camera->camera);
                image_buffer = arv_buffer_new(payload, NULL);
            }

            arv_fake_camera_wait_for_next_frame(gv_camera->camera);
            arv_fake_camera_fill_buffer(gv_camera->camera, image_buffer,
                                        &gv_packet_size);

            block_id = 0;

            packet_size = bufsize;
            arv_gvsp_packet_new_data_leader(
                    image_buffer->priv->frame_id, block_id,
                    image_buffer->priv->timestamp_ns,
                    image_buffer->priv->pixel_format, image_buffer->priv->width,
                    image_buffer->priv->height, image_buffer->priv->x_offset,
                    image_buffer->priv->y_offset, packet_buffer, &packet_size);

            g_socket_send_to(gv_camera->gvsp_socket, stream_address,
                             packet_buffer, packet_size, NULL, &error);
            if (error != NULL) {
                arv_warning_stream_thread(
                        "[ArvFakeGvCamera::stream_thread] Socket send error [%s]",
                        error->message);
                g_error_free(error);
                error = NULL;
            }

            block_id++;

            offset = 0;
            while (offset < payload) {
                size_t data_size;

                data_size =
                        MIN(gv_packet_size - ARV_GVSP_PACKET_PROTOCOL_OVERHEAD,
                            payload - offset);

                packet_size = bufsize;
                arv_gvsp_packet_new_data_block(
                        image_buffer->priv->frame_id, block_id, data_size,
                        ((char *)image_buffer->priv->data) + offset,
                        packet_buffer, &packet_size);

                g_socket_send_to(gv_camera->gvsp_socket, stream_address,
                                 packet_buffer, packet_size, NULL, NULL);

                offset += data_size;
                block_id++;
            }

            packet_size = bufsize;
            arv_gvsp_packet_new_data_trailer(image_buffer->priv->frame_id,
                                             block_id, packet_buffer,
                                             &packet_size);

            g_socket_send_to(gv_camera->gvsp_socket, stream_address,
                             packet_buffer, packet_size, NULL, NULL);
        }
    } while (!cancel);

    if (stream_address != NULL)
        g_object_unref(stream_address);
    if (image_buffer != NULL)
        g_object_unref(image_buffer);

    g_free(packet_buffer);

    return NULL;
}

ArvFakeGvCamera *arv_fake_gv_camera_new(const char *interface_name,
                                        const char *filename)
{
    ArvFakeGvCamera *gv_camera;
    struct ifaddrs *ifap = NULL;
    struct ifaddrs *ifap_iter;
    int return_value;
    gboolean interface_found = FALSE;
    gboolean binding_error = FALSE;

    g_return_val_if_fail(interface_name != NULL, NULL);
    if (filename) {
        arv_set_fake_camera_genicam_filename(filename);
    }

    gv_camera = g_new0(ArvFakeGvCamera, 1);
    gv_camera->camera = arv_fake_camera_new("GV01");

    return_value = getifaddrs(&ifap);
    if (return_value < 0) {
        g_warning("[FakeGvCamera::new] No network interface found");
        return NULL;
    }

    for (ifap_iter = ifap; ifap_iter != NULL && !interface_found;
         ifap_iter = ifap_iter->ifa_next) {
        if ((ifap_iter->ifa_flags & IFF_UP) != 0
            && (ifap_iter->ifa_flags & IFF_POINTOPOINT) == 0
            && (ifap_iter->ifa_addr->sa_family == AF_INET)
            && g_strcmp0(ifap_iter->ifa_name, interface_name) == 0) {
            GSocketAddress *socket_address;
            GSocketAddress *inet_socket_address;
            GInetAddress *inet_address;
            char *gvcp_address_string;
            char *discovery_address_string;

            socket_address = g_socket_address_new_from_native(
                    ifap_iter->ifa_addr, sizeof(struct sockaddr));
            inet_address = g_inet_socket_address_get_address(
                    G_INET_SOCKET_ADDRESS(socket_address));
            gvcp_address_string = g_inet_address_to_string(inet_address);
            arv_debug_device("[FakeGvCamera::new] Interface address = %s",
                             gvcp_address_string);

            inet_socket_address =
                    g_inet_socket_address_new(inet_address, ARV_GVCP_PORT);
            gv_camera->gvcp_socket = g_socket_new(G_SOCKET_FAMILY_IPV4,
                                                  G_SOCKET_TYPE_DATAGRAM,
                                                  G_SOCKET_PROTOCOL_UDP, NULL);
            if (!g_socket_bind(gv_camera->gvcp_socket, inet_socket_address, FALSE,
                               NULL))
                binding_error = TRUE;
            g_socket_set_blocking(gv_camera->gvcp_socket, FALSE);
            arv_fake_camera_set_inet_address(gv_camera->camera, inet_address);
            g_object_unref(inet_socket_address);

            inet_socket_address = g_inet_socket_address_new(inet_address, 0);
            gv_camera->gvsp_socket = g_socket_new(G_SOCKET_FAMILY_IPV4,
                                                  G_SOCKET_TYPE_DATAGRAM,
                                                  G_SOCKET_PROTOCOL_UDP, NULL);
            if (!g_socket_bind(gv_camera->gvsp_socket, inet_socket_address, FALSE,
                               NULL))
                binding_error = TRUE;
            g_object_unref(inet_socket_address);

            g_object_unref(socket_address);

            inet_address = g_inet_address_new_from_string("255.255.255.255");
            discovery_address_string = g_inet_address_to_string(inet_address);
            arv_debug_device("[FakeGvCamera::new] Discovery address = %s",
                             discovery_address_string);
            inet_socket_address =
                    g_inet_socket_address_new(inet_address, ARV_GVCP_PORT);
            if (g_strcmp0(gvcp_address_string, discovery_address_string) == 0)
                gv_camera->discovery_socket = NULL;
            else {
                gv_camera->discovery_socket =
                        g_socket_new(G_SOCKET_FAMILY_IPV4, G_SOCKET_TYPE_DATAGRAM,
                                     G_SOCKET_PROTOCOL_UDP, NULL);
                if (!g_socket_bind(gv_camera->discovery_socket,
                                   inet_socket_address, FALSE, NULL))
                    binding_error = TRUE;
                g_socket_set_blocking(gv_camera->discovery_socket, FALSE);
            }
            g_object_unref(inet_socket_address);

            g_free(gvcp_address_string);
            g_free(discovery_address_string);

            gv_camera->gvcp_fds[0].fd = g_socket_get_fd(gv_camera->gvcp_socket);
            gv_camera->gvcp_fds[0].events = G_IO_IN;
            gv_camera->gvcp_fds[0].revents = 0;
            if (gv_camera->discovery_socket != NULL) {
                gv_camera->gvcp_fds[1].fd =
                        g_socket_get_fd(gv_camera->discovery_socket);
                gv_camera->gvcp_fds[1].events = G_IO_IN;
                gv_camera->gvcp_fds[1].revents = 0;
                gv_camera->n_gvcp_fds = 2;
            } else
                gv_camera->n_gvcp_fds = 1;

            interface_found = TRUE;
        }
    }

    freeifaddrs(ifap);

    if (binding_error)
        goto BINDING_ERROR;

    if (!interface_found)
        goto INTERFACE_ERROR;

    gv_camera->cancel = FALSE;
    gv_camera->gvsp_thread = g_thread_new("arv_fake_gv_camera",
                                          arv_fake_gv_camera_thread, gv_camera);

    return gv_camera;

BINDING_ERROR:
    fprintf(stderr, "Interface binding error\n");
    g_object_unref(gv_camera->gvcp_socket);
    if (gv_camera->discovery_socket != NULL)
        g_object_unref(gv_camera->discovery_socket);
    g_object_unref(gv_camera->gvsp_socket);

INTERFACE_ERROR:
    fprintf(stderr, "Interface error\n");
    g_object_unref(gv_camera->camera);
    g_free(gv_camera);

    return NULL;
}

void arv_fake_gv_camera_free(ArvFakeGvCamera *gv_camera)
{
    g_return_if_fail(gv_camera != NULL);

    if (gv_camera->gvsp_thread != NULL) {
        gv_camera->cancel = TRUE;
        g_thread_join(gv_camera->gvsp_thread);
        gv_camera->gvsp_thread = NULL;
    }

    g_object_unref(gv_camera->gvcp_socket);
    if (gv_camera->discovery_socket != NULL)
        g_object_unref(gv_camera->discovery_socket);
    g_object_unref(gv_camera->camera);
    if (gv_camera->controller_address != NULL)
        g_object_unref(gv_camera->controller_address);
    g_free(gv_camera);
}

void handle_control_packet(ArvFakeGvCamera *gv_camera, GSocket *socket,
                           GSocketAddress *remote_address, ArvGvcpPacket *packet,
                           size_t size)
{
    ArvGvcpPacket *ack_packet = NULL;
    size_t ack_packet_size;
    guint32 block_address;
    guint32 block_size;
    guint16 packet_id;
    guint32 register_address;
    guint32 register_value;
    gboolean write_access;

    if (gv_camera->controller_address != NULL) {
        struct timespec time;
        guint64 elapsed_ms;

        clock_gettime(CLOCK_MONOTONIC, &time);

        elapsed_ms =
                1000 * (time.tv_sec - gv_camera->controller_time.tv_sec)
                + (time.tv_nsec - gv_camera->controller_time.tv_nsec) / 1000000;

        if (elapsed_ms
            > arv_fake_camera_get_heartbeat_timeout(gv_camera->camera)) {
            g_object_ref(gv_camera->controller_address);
            gv_camera->controller_address = NULL;
            write_access = TRUE;
            arv_warning_device(
                    "[FakeGvCamera::handle_control_packet] Heartbeat timeout");
            arv_fake_camera_set_control_channel_privilege(gv_camera->camera, 0);
        } else
            write_access = _g_inet_socket_address_is_equal(
                    G_INET_SOCKET_ADDRESS(remote_address),
                    G_INET_SOCKET_ADDRESS(gv_camera->controller_address));
    } else
        write_access = TRUE;

    arv_gvcp_packet_debug(packet, ARV_DEBUG_LEVEL_LOG);

    packet_id = arv_gvcp_packet_get_packet_id(packet);

    switch (g_ntohs(packet->header.command)) {
    case ARV_GVCP_COMMAND_DISCOVERY_CMD:
        ack_packet = arv_gvcp_packet_new_discovery_ack(&ack_packet_size);
        arv_debug_device(
                "[FakeGvCamera::handle_control_packet] Discovery command");
        arv_fake_camera_read_memory(gv_camera->camera, 0,
                                    ARV_GVBS_DISCOVERY_DATA_SIZE,
                                    &ack_packet->data);
        break;
    case ARV_GVCP_COMMAND_READ_MEMORY_CMD:
        arv_gvcp_packet_get_read_memory_cmd_infos(packet, &block_address,
                                                  &block_size);
        arv_debug_device(
                "[FakeGvCamera::handle_control_packet] Read memory command %d (%d)",
                block_address, block_size);
        ack_packet = arv_gvcp_packet_new_read_memory_ack(
                block_address, block_size, packet_id, &ack_packet_size);
        arv_fake_camera_read_memory(
                gv_camera->camera, block_address, block_size,
                arv_gvcp_packet_get_read_memory_ack_data(ack_packet));
        break;
    case ARV_GVCP_COMMAND_WRITE_MEMORY_CMD:
        if (!write_access)
            break;

        arv_gvcp_packet_get_write_memory_cmd_infos(packet, &block_address,
                                                   &block_size);
        arv_debug_device(
                "[FakeGvCamera::handle_control_packet] Write memory command %d (%d)",
                block_address, block_size);
        arv_fake_camera_write_memory(
                gv_camera->camera, block_address, block_size,
                arv_gvcp_packet_get_write_memory_cmd_data(packet));
        ack_packet = arv_gvcp_packet_new_write_memory_ack(
                block_address, packet_id, &ack_packet_size);
        break;
    case ARV_GVCP_COMMAND_READ_REGISTER_CMD:
        arv_gvcp_packet_get_read_register_cmd_infos(packet, &register_address);
        arv_fake_camera_read_register(gv_camera->camera, register_address,
                                      &register_value);
        arv_debug_device(
                "[FakeGvCamera::handle_control_packet] Read register command %d -> %d",
                register_address, register_value);
        ack_packet = arv_gvcp_packet_new_read_register_ack(
                register_value, packet_id, &ack_packet_size);

        if (register_address == ARV_GVBS_CONTROL_CHANNEL_PRIVILEGE_OFFSET)
            clock_gettime(CLOCK_MONOTONIC, &gv_camera->controller_time);

        break;
    case ARV_GVCP_COMMAND_WRITE_REGISTER_CMD:
        if (!write_access)
            break;

        arv_gvcp_packet_get_write_register_cmd_infos(packet, &register_address,
                                                     &register_value);
        arv_fake_camera_write_register(gv_camera->camera, register_address,
                                       register_value);
        arv_debug_device(
                "[FakeGvCamera::handle_control_packet] Write register command %d -> %d",
                register_address, register_value);
        ack_packet = arv_gvcp_packet_new_write_register_ack(
                register_value, packet_id, &ack_packet_size);
        break;
    default:
        arv_warning_device(
                "[FakeGvCamera::handle_control_packet] Unknown command");
    }

    if (ack_packet != NULL) {
        g_socket_send_to(socket, remote_address, (char *)ack_packet,
                         ack_packet_size, NULL, NULL);
        arv_gvcp_packet_debug(ack_packet, ARV_DEBUG_LEVEL_LOG);
        g_free(ack_packet);
    }

    if (gv_camera->controller_address == NULL
        && arv_fake_camera_get_control_channel_privilege(gv_camera->camera)
                   != 0) {
        g_object_ref(remote_address);
        gv_camera->controller_address = remote_address;
        clock_gettime(CLOCK_MONOTONIC, &gv_camera->controller_time);
    }
}

unsigned char *img = NULL;

void fill_pattern_callback(ArvBuffer *buffer, void *fill_pattern_data,
                           guint32 exposure_time_us, guint32 gain,
                           ArvPixelFormat pixel_format)
{
    double pixel_value;
    double scale;
    guint32 x, y;
    guint32 width;
    guint32 height;
    int size;

    if (buffer == NULL)
        return;

    if (pixel_format != ARV_PIXEL_FORMAT_MONO_8)
        return;

    width = buffer->priv->width;
    height = buffer->priv->height;

    size = width * height * sizeof(unsigned char);
    if (!img) {
        img = (unsigned char *)malloc(2 * size);

        scale = 1.0 + gain + log10((double)exposure_time_us / 10000.0);

        for (y = 0; y < height; y++) {
            for (x = 0; x < width; x++) {
                pixel_value = (x + y) % 255;
                pixel_value *= scale;

                if (pixel_value < 0.0)
                    img[y * width + x] = 0;
                else if (pixel_value > 255.0)
                    img[y * width + x] = 255;
                else
                    img[y * width + x] = pixel_value;
            }
        }

        memcpy(img + size, img, size);
        memcpy(buffer->priv->data, img, size);
    } else {
        int offset =
                (buffer->priv->frame_id % height) * width * sizeof(unsigned char);
        memcpy(buffer->priv->data, img + offset, size);
    }
}

void fill_v4l_callback(ArvBuffer *buffer, void *fill_pattern_data,
                       guint32 exposure_time_us, guint32 gain,
                       ArvPixelFormat pixel_format)
{
    double pixel_value;
    double scale;
    guint32 width;
    guint32 height;

    if (buffer == NULL)
        return;

    /*
    if (pixel_format != ARV_PIXEL_FORMAT_YUV_422_PACKED) {
        fprintf(stderr, "Format must be YUV 4:2:2 packed\n");
		exit(EXIT_FAILURE);
		return;
	}
	*/

    width = buffer->priv->width;
    height = buffer->priv->height;

    capture(buffer->priv->data);
}

int main(int argc, char **argv)
{
    ArvFakeGvCamera *gv_camera;
    int n_events;
    GInputVector input_vector;
    GOptionContext *context;
    GError *error = NULL;
    int init_status;

    g_thread_init(NULL);
    g_type_init();

    context = g_option_context_new(NULL);
    g_option_context_set_summary(context, "Fake GigEVision camera.");
    g_option_context_set_description(
            context, "Example: 'fake-cam -i eth0 -c /dev/video0'");
    g_option_context_add_main_entries(context, arv_option_entries, NULL);

    if (!g_option_context_parse(context, &argc, &argv, &error)) {
        g_option_context_free(context);
        g_print("Option parsing failed: %s\n", error->message);
        g_error_free(error);
        return EXIT_FAILURE;
    }

    g_option_context_free(context);

    // working here
    dev_name = arv_option_camera_devname;
    open_device();
    init_device();
    width = captype == captype_mplane ? (unsigned long long)fmt.fmt.pix_mp.width :
                                        (unsigned long long)fmt.fmt.pix.width;
    height = captype == captype_mplane ?
                     (unsigned long long)fmt.fmt.pix_mp.height :
                     (unsigned long long)fmt.fmt.pix.height;
    bufsize = width * height;
    LOG("Setting buffer size to %llu x %llu (%llu bytes)", width, height,
        bufsize);
    input_vector.buffer = g_malloc0(bufsize);
    input_vector.size = bufsize;

    printf("Pixel format: %s\n", arv_option_is_bw ? "Mono8 bw" : "YUYV 4:2:2");

    arv_debug_enable(arv_option_debug_domains);

    if (g_file_test("arv-fake-camera.xml", G_FILE_TEST_EXISTS)) {
        gv_camera = arv_fake_gv_camera_new(arv_option_interface_name,
                                           "arv-fake-camera.xml");
    } else {
        gv_camera = arv_fake_gv_camera_new(arv_option_interface_name, NULL);
    }
    if (gv_camera == NULL) {
        g_print("Can't instantiate a new fake camera.\n");
        g_print("An existing instance may already use the '%s' interface.\n",
                arv_option_interface_name);
        return EXIT_FAILURE;
    }

    start_capturing();

    //arv_fake_camera_set_fill_pattern (gv_camera->camera, fill_pattern_callback, NULL);
    arv_fake_camera_set_fill_pattern(gv_camera->camera, fill_v4l_callback, NULL);

    signal(SIGINT, set_cancel);

    do {
        n_events = g_poll(gv_camera->gvcp_fds, 2, 1000);
        if (arv_option_debug_domains != NULL) {
            g_print("n_events = %d\n", n_events);
        }
        if (n_events > 0) {
            GSocketAddress *remote_address;
            int count;

            int flags = G_SOCKET_MSG_NONE;
            count = g_socket_receive_message(gv_camera->gvcp_socket,
                                             &remote_address, &input_vector, 1,
                                             NULL, NULL, &flags, NULL, NULL);
            if (count > 0)
                handle_control_packet(gv_camera, gv_camera->gvcp_socket,
                                      remote_address, input_vector.buffer, count);

            if (gv_camera->discovery_socket != NULL) {
                int flags = G_SOCKET_MSG_NONE;
                count = g_socket_receive_message(gv_camera->discovery_socket,
                                                 &remote_address, &input_vector,
                                                 1, NULL, NULL, &flags, NULL,
                                                 NULL);
                if (count > 0)
                    handle_control_packet(gv_camera, gv_camera->discovery_socket,
                                          remote_address, input_vector.buffer,
                                          count);
            }
        }
    } while (!cancel);

    stop_capturing();
    uninit_device();
    close_device();

    g_free(input_vector.buffer);

    arv_fake_gv_camera_free(gv_camera);

    return EXIT_SUCCESS;
}
