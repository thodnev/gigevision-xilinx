#
# This file is the libgpio recipe.
#

SUMMARY = "Simple libgpio library"
SECTION = "libs"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"


SRC_URI = "git://github.com/mitchellorsucci/libgpio.git \
	"
SRCREV = "${AUTOREV}"


FILES_${PN} = "${libdir}/*.so.* ${includedir}/* ${libdir}/libgpio.so"

FILES_SOLIBSDEV = ""
FILES_${PN}-dev = ""
INSANE_SKIP_${PN} += "dev-so"
SOLIBS = ".so"



RDEPENDS_${PN} = "glibc libuio"
DEPENDS = "glibc libuio"


S = "${WORKDIR}/git"

PACKAGE_ARCH = "${MACHINE_ARCH}"
PROVIDES = "gpio"
TARGET_CC_ARCH += "${LDFLAGS}"

do_install() {
		install -d ${D}${libdir}
		oe_libinstall -so libgpio ${D}${libdir}
		
		install -d 0655 ${D}${includedir}
	   	install -m 0644 ${S}/libgpio.h ${D}${includedir}

		install -m 0644 ${S}/libgpio.so ${D}{libdir}

}

