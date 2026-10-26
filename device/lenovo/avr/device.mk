#
# Copyright (C) 2026 AERA Recovery
# device.mk for Lenovo Legion Y70 (avr)
#

# USB config
PRODUCT_PROPERTY_OVERRIDES += \
    ro.recovery.usb.vid=22B8 \
    ro.recovery.usb.adb.pid=2E81 \
    ro.recovery.usb.fastboot.pid=2E80 \

# Device identity
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.device=avr \
    ro.product.name=avr_cn \
    ro.product.model=XT2611-1 \
    ro.product.brand=Lenovo \
    ro.product.manufacturer=Motorola Mobility \
    ro.build.product=avr \

# Modules are auto-loaded by AERA framework from modules/ directory
# (see AERA_LOAD_VENDOR_MODULES in BoardConfig.mk)

# 跳过prebuilt page size检查（magiskboot 4096 vs 16384）
PRODUCT_CHECK_PREBUILT_MAX_PAGE_SIZE := false
