inherit kernel-resin

FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI += "file://0001-include-linux-compiler-gcc6.h-Add-duplicate-of-gcc-5.patch"
