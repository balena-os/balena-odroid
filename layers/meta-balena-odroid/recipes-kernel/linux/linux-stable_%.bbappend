inherit kernel-resin

FILESEXTRAPATHS_append := ":${THISDIR}/${PN}:"

# support for Realtek RTL8152/RTL8153 Based USB Ethernet Adapters such as the one featured in the Odroid XU4
BALENA_CONFIGS_append = " rtl8152"
BALENA_CONFIGS[rtl8152] = " \
    CONFIG_USB_RTL8152=m \
"

BALENA_CONFIGS_append = " x509_disable"
BALENA_CONFIGS[x509_disable] = " \
    CONFIG_X509_CERTIFICATE_PARSER=n \
    CONFIG_SYSTEM_TRUSTED_KEYRING=n \
"

SRC_URI += " \
    file://don-t-default-activate-regdb.patch \
    file://0001-odroid-xu4-Enable-I2C-1.patch \
"

# add support for video input devices, such as webcams (adds uvcvideo.ko kernel module)
BALENA_CONFIGS_append = " uvcvideo"
BALENA_CONFIGS_DEPS[uvcvideo] = " \
    CONFIG_MEDIA_SUPPORT=m \
    CONFIG_MEDIA_USB_SUPPORT=y \
    CONFIG_MEDIA_CAMERA_SUPPORT=y \
"
BALENA_CONFIGS[uvcvideo] = " \
    CONFIG_USB_VIDEO_CLASS=m \
"

# requested by user for XU4 Cloudshell 2.2" TFT LCD support
BALENA_CONFIGS_append = " fbtft"
BALENA_CONFIGS[fbtft] = " \
    CONFIG_FB_TFT=m \
    CONFIG_FB_TFT_FBTFT_DEVICE=m \
"

# required for the above TFT LCD
BALENA_CONFIGS_append = " spidev"
BALENA_CONFIGS[spidev] = " \
    CONFIG_SPI_SPIDEV=m \
"

# requested by customer
BALENA_CONFIGS_append = " snd_aloop"
BALENA_CONFIGS_DEPS[snd_aloop] = " \
    CONFIG_SOUND=y \
    CONFIG_SND=y \
    CONFIG_SND_DRIVERS=y \
"

# Add support for bluetooth devices include usb adapters
BALENA_CONFIGS_append = " blueadd"
BALENA_CONFIGS[blueadd] = " \
	CONFIG_BT=m \
	CONFIG_BT_BREDR=y \
	CONFIG_BT_HS=y \
	CONFIG_BT_LE=y \
	CONFIG_BT_DEBUGFS=y \
	CONFIG_BT_BCM=y \
	CONFIG_BT_HCIBTUSB=m \
	CONFIG_BT_HCIBTUSB_BCM=y \
	CONFIG_BT_HCIBCM203X=m \
	CONFIG_BT_HCIVHCI=y \
"

BALENA_CONFIGS[snd_aloop] = " \
    CONFIG_SND_ALOOP=m \
"

do_kernel_configme[depends] += "virtual/${TARGET_PREFIX}binutils:do_populate_sysroot"
do_kernel_configme[depends] += "virtual/${TARGET_PREFIX}gcc:do_populate_sysroot"
do_kernel_configme[depends] += "bc-native:do_populate_sysroot bison-native:do_populate_sysroot"
