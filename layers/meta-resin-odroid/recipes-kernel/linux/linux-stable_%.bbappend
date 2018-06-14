inherit kernel-resin

FILESEXTRAPATHS_append := ":${THISDIR}/${PN}:"

# support for Realtek RTL8152/RTL8153 Based USB Ethernet Adapters such as the one featured in the Odroid XU4
RESIN_CONFIGS_append = " rtl8152"
RESIN_CONFIGS[rtl8152] = " \
    CONFIG_USB_RTL8152=m \
"

RESIN_CONFIGS_append = " x509_disable"
RESIN_CONFIGS[x509_disable] = " \
    CONFIG_X509_CERTIFICATE_PARSER=n \
    CONFIG_SYSTEM_TRUSTED_KEYRING=n \
"

SRC_URI += "file://don-t-default-activate-regdb.patch \
"
