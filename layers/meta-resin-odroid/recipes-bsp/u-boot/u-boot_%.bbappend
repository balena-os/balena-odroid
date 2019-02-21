UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI_append =  " file://0001-odroid_xu3.h-Add-the-machine-specific-integration-of.patch"
SRC_URI_append_odroid-xu4 = " file://0001-odroid-xu4-Enable-CONFIG_CMD_SETEXPR.patch"
