#
# Copyright (C) 2026 AERA Recovery
# aera_avr.mk - product config for Lenovo Legion Y70 (avr)
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit AERA Recovery common config
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device makefile
$(call inherit-product, device/lenovo/avr/device.mk)

# Product identity
PRODUCT_NAME := twrp_avr
PRODUCT_DEVICE := avr
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := XT2611-1
PRODUCT_MANUFACTURER := Motorola Mobility

# Overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=avr \
    PRODUCT_NAME=avr_cn \
    PRIVATE_BUILD_DESC="avr_cn-user 16 W3WWL36.65-11-18 12710e-0d97a:user/release-keys"

BUILD_FINGERPRINT := "Lenovo/avr_cn/avr:16/W3WWL36.65-11-18/12710e-0d97a:user/release-keys"
