inherit kernel-resin

# support for Realtek RTL8152/RTL8153 Based USB Ethernet Adapters such as the one featured in the Odroid XU4
RESIN_CONFIGS_append = " rtl8152"
RESIN_CONFIGS[rtl8152] = " \
    CONFIG_USB_RTL8152=m \
"
