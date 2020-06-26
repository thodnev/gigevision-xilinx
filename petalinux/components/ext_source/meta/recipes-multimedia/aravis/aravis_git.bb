SUMMARY = "GStreamer support for GigE cameras"

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=b1a8f8ba2ed964cab10244d42184a7a3"

inherit systemd

SRC_URI = "https://github.com/AravisProject/aravis/archive/ARAVIS_0_6_1.tar.gz"
SRC_URI[md5sum] = "5d72996b1d1008e2d13f4a0d3dba7f39"

SRC_URI += " \
	file://aravis-disable-gtkdoc.patch \
	file://aravis-bufferprivate.patch \
"

DEPENDS=" \
	gstreamer1.0 \
	gstreamer1.0-plugins-base \
	libxml2 \
	glib-2.0 \
	glib-2.0-native \
	gtk-doc \
	gobject-introspection \
	intltool-native \
"

S = "${WORKDIR}/aravis-ARAVIS_0_6_1"

FILES_${PN} = "${libdir}/gstreamer-1.0/*.so"
FILES_${PN} += "${bindir}/arv-*"
FILES_${PN} += "${libdir}/*.so.*"
FILES_${PN}-dbg += "${libdir}/gstreamer-1.0/.debug"
FILES_${PN}-dev += "${libdir}/gstreamer-1.0/*.la"
FILES_${PN}-staticdev += "${libdir}/gstreamer-1.0/*.a"

EXTRA_OECONF="--enable-gst-plugin --enable-introspection=no --enable-gtk-doc=no --host=${TARGET_SYS} --prefix=${prefix}"

do_configure_prepend() {
    ( cd ${S}
    ${S}/autogen.sh ${EXTRA_OECONF} )
}

do_install () {
    oe_runmake install DESTDIR=${D}
}
