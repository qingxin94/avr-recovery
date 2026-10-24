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

# Copy Goodix Berlin touchscreen driver modules into recovery ramdisk
# Loaded by init.recovery.qcom.rc (see dependency order there)
PRODUCT_COPY_FILES += \
    device/lenovo/avr/modules/mmi_annotate.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mmi_annotate.ko \
    device/lenovo/avr/modules/mmi_info.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mmi_info.ko \
    device/lenovo/avr/modules/sensors_class.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/sensors_class.ko \
    device/lenovo/avr/modules/mmi_relay.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mmi_relay.ko \
    device/lenovo/avr/modules/touchscreen_mmi.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/touchscreen_mmi.ko \
    device/lenovo/avr/modules/goodix_brl_thp.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/goodix_brl_thp.ko
