#
# This file is the gpioutil recipe.
#

SUMMARY = "GPIO utility from the command line"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
DEPENDS = "libgpio libuio glibc"
RDEPENDS_${PN} = "libgpio libuio glibc"
SRC_URI = "git://github.com/mitchellorsucci/gpioutil.git \
		  "

SRCREV = "${AUTOREV}"
S = "${WORKDIR}/git"
TARGET_CC_ARCH += "${LDFLAGS}"

do_compile() {
	     ${CC} ${CFLAGS} gpioUtility.c -lgpio -luio -o gpioutil
}

do_install() {
	     install -d ${D}${bindir}
	     install -m 0755 gpioutil ${D}${bindir}
}

FILES_${PN} += "gpioutil"
