IMAGE_ROOTFS_MAXSIZE = "12288"

#
# ODROID-XU4
#

# remove sdcard fs type defined in the BSP layer (we do not use it)
# having it included yields circular dependencies issues:
# ERROR:
# Dependency loop #1 found:
#   Task layers/meta-odroid/recipes-kernel/linux/linux-stable_4.9.bb:do_bundle_initramfs (dependent Tasks ['linux-stable_4.9.bb:do_install', 'resin-image-initramfs.bb:do_image_complete'])

IMAGE_FSTYPES_remove_odroid-xu4 = " wic wic.xz"
