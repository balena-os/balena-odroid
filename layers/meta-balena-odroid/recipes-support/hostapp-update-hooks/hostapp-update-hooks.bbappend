FILESEXTRAPATHS_append := ":${THISDIR}/files"

HOSTAPP_HOOKS += " \
    99-resin-uboot \
"

HOSTAPP_HOOKS_append_odroid-c1 = " \
    99-flash-bootloader-odroid-c1 \
"

HOSTAPP_HOOKS_append_odroid-xu4 = " \
    99-flash-bootloader-odroid-xu4 \
"
