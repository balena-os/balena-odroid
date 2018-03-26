#
# ODROID-XU4
#

IMAGE_FSTYPES_append_odroid-xu4 = " resinos-img"

# Customize resinos-img
RESIN_BOOT_PARTITION_FILES_odroid-xu4 = " \
    bl1.bin.hardkernel: \
    bl2.bin.hardkernel: \
    boot.ini: \
    u-boot-${MACHINE}.${UBOOT_SUFFIX}: \
    tzsw.bin.hardkernel: \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    zImage-exynos5422-odroidxu4.dtb:/exynos5422-odroidxu4.dtb \
    "

# BOOT components
UBOOT_B1_POS_odroid-xu4 ?= "1"
UBOOT_B2_POS_odroid-xu4 ?= "31"
UBOOT_BIN_POS_odroid-xu4 ?= "63"
UBOOT_TZSW_POS_odroid-xu4 ?= "1503"
UBOOT_ENV_POS_odroid-xu4 ?= "2015"

IMAGE_CMD_resinos-img_append_odroid-xu4 () {
    # odroid-xu4 needs bootloader files written at specific locations
    dd if=${DEPLOY_DIR_IMAGE}/bl1.bin.hardkernel of=${RESIN_RAW_IMG} conv=notrunc seek=${UBOOT_B1_POS}
    dd if=${DEPLOY_DIR_IMAGE}/bl2.bin.hardkernel of=${RESIN_RAW_IMG} conv=notrunc seek=${UBOOT_B2_POS}
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.${UBOOT_SUFFIX} of=${RESIN_RAW_IMG} conv=notrunc seek=${UBOOT_BIN_POS}
    dd if=${DEPLOY_DIR_IMAGE}/tzsw.bin.hardkernel of=${RESIN_RAW_IMG} conv=notrunc seek=${UBOOT_TZSW_POS}
    dd if=/dev/zero of=${RESIN_RAW_IMG} seek=${UBOOT_ENV_POS} conv=notrunc count=32 bs=512
}

#
# ODROID-C1
#

IMAGE_FSTYPES_append_odroid-c1 = " resinos-img"

# Customize resinos-img
RESIN_BOOT_PARTITION_FILES_odroid-c1 = " \
    bl1.bin.hardkernel: \
    boot.ini: \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    u-boot-${MACHINE}.${UBOOT_SUFFIX}: \
    uImage-meson8b_odroidc.dtb:/meson8b_odroidc.dtb \
    "

IMAGE_CMD_resinos-img_append_odroid-c1 () {
    dd if=${DEPLOY_DIR_IMAGE}/bl1.bin.hardkernel of=${RESIN_RAW_IMG} bs=1 count=442 conv=notrunc
    dd if=${DEPLOY_DIR_IMAGE}/bl1.bin.hardkernel of=${RESIN_RAW_IMG} bs=512 skip=1 seek=1 conv=notrunc
    dd if=${DEPLOY_DIR_IMAGE}/u-boot.bin of=${RESIN_RAW_IMG} bs=512 seek=64 conv=notrunc
}
