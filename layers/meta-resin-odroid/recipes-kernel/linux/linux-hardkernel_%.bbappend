inherit kernel-resin

FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI += " \
    file://0001-include-linux-compiler-gcc6.h-Add-duplicate-of-gcc-5.patch \
    file://mali_build.patch \
    "

# Update to a more recent version to fix aufs build
SRCREV_odroid-c1 = "e256c9f9196a98cbacde730fda602e793b385a27"
KV_odroid-c1 = "3.10.107"

# These configs set CONFIG_CFG80211=m which breaks the hardkernel build
RESIN_CONFIGS_remove = "rtl8192cu"
RESIN_CONFIGS_remove = "ralink"
RESIN_CONFIGS_remove = "brcmfmac"
