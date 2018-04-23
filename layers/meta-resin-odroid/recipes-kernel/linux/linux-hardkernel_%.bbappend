inherit kernel-resin

FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI += " \
    file://0001-include-linux-compiler-gcc6.h-Add-duplicate-of-gcc-5.patch \
    file://mali_build.patch \
    file://0002-Revert-fix-d_walk-non-delayed-__d_free-race.patch \
    file://0003-Revert-d_walk-might-skip-too-much.patch \
    file://0004-Revert-d_walk-might-skip-too-much.patch \
    file://0005-Revert-dcache-Fix-locking-bugs-in-backported-deal-wi.patch \
    file://0006-Revert-deal-with-deadlock-in-d_walk.patch \
"

# Update to a more recent version to fix aufs build
SRCREV_odroid-c1 = "e256c9f9196a98cbacde730fda602e793b385a27"
KV_odroid-c1 = "3.10.107"

# These configs set CONFIG_CFG80211=m which breaks the hardkernel build
RESIN_CONFIGS_remove = "rtl8192cu"
RESIN_CONFIGS_remove = "ralink"
RESIN_CONFIGS_remove = "brcmfmac"
