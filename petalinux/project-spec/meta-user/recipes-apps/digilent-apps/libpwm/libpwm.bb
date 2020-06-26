#
# This file is the libpwm recipe.
#

SUMMARY = "Simple libpwm application"
SECTION = "libs"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "git://github.com/mitchellorsucci/libpwm.git \
		  "

SRCREV = "${AUTOREV}"

RDEPENDS_${PN} = "glibc libuio"
DEPENDS = "glibc libuio"

FILES_${PN} = "${libdir}/*.so.* ${includedir}/* ${libdir}/*.so"

FILES_SOLIBSDEV = ""
FILES_${PN}-dev = ""
INSANE_SKIP_${PN} += "dev-so"
SOLIBS = ".so"


S = "${WORKDIR}/git"

PACKAGE_ARCH = "${MACHINE_ARCH}"
PROVIDES = "libpwm"
TARGET_CC_ARCH += "${LDFLAGS}"

do_install() {
		install -d ${D}${libdir}
		oe_libinstall -so libpwm ${D}${libdir}
		
		install -d ${D}${includedir}
	   	install -m 0644 ${S}/libpwm.h ${D}${includedir}

		install -m 0644 libpwm.so ${D}${libdir}

}

