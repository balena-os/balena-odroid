UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_remove = "file://resin-specific-env-integration-kconfig.patch"

SRC_URI_append =  " \
	file://0001-Rework-resin-specific-env-integration-kconfig.patch \
	file://0001-odroid_xu3.h-Add-the-machine-specific-integration-of.patch \
"
