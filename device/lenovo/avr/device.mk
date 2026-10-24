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
# Loaded by AERA framework via AERA_LOAD_VENDOR_MODULES (see BoardConfig.mk)
PRODUCT_COPY_FILES += \
    device/lenovo/avr/modules/mmi_annotate.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mmi_annotate.ko \
    device/lenovo/avr/modules/mmi_info.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mmi_info.ko \
    device/lenovo/avr/modules/sensors_class.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/sensors_class.ko \
    device/lenovo/avr/modules/mmi_relay.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mmi_relay.ko \
    device/lenovo/avr/modules/panel_event_notifier.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/panel_event_notifier.ko \
    device/lenovo/avr/modules/touchscreen_mmi.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/touchscreen_mmi.ko \
    device/lenovo/avr/modules/goodix_brl_thp.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/goodix_brl_thp.ko \
    device/lenovo/avr/modules/qti_battery_charger.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qti_battery_charger.ko \
    device/lenovo/avr/modules/qti_pmic_glink.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qti_pmic_glink.ko \
    device/lenovo/avr/modules/mmi_glink_charger.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mmi_glink_charger.ko \
    device/lenovo/avr/modules/qti_glink_charger_v2.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qti_glink_charger_v2.ko \
    device/lenovo/avr/modules/qpnp_adaptive_charge.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qpnp_adaptive_charge.ko \
    device/lenovo/avr/modules/charger-ulog-glink.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/charger-ulog-glink.ko \
    device/lenovo/avr/modules/bm_adsp_ulog.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/bm_adsp_ulog.ko \
    device/lenovo/avr/modules/moto_reboot_reason.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/moto_reboot_reason.ko \
    device/lenovo/avr/modules/cnss_prealloc.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cnss_prealloc.ko \
    device/lenovo/avr/modules/cnss_utils.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cnss_utils.ko \
    device/lenovo/avr/modules/cnss_nl.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cnss_nl.ko \
    device/lenovo/avr/modules/cnss_plat_ipc_qmi_svc.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cnss_plat_ipc_qmi_svc.ko \
    device/lenovo/avr/modules/wlan_firmware_service.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/wlan_firmware_service.ko \
    device/lenovo/avr/modules/qmi_helpers.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qmi_helpers.ko \
    device/lenovo/avr/modules/cmd-db.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cmd-db.ko \
    device/lenovo/avr/modules/cnss2.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cnss2.ko \
    device/lenovo/avr/modules/icnss2.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/icnss2.ko \
    device/lenovo/avr/modules/qcom_ramdump.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qcom_ramdump.ko \
    device/lenovo/avr/modules/qcom_va_minidump.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qcom_va_minidump.ko \
    device/lenovo/avr/modules/mhi.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mhi.ko \
    device/lenovo/avr/modules/pci-msm-drv.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/pci-msm-drv.ko \
    device/lenovo/avr/modules/pdr_interface.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/pdr_interface.ko \
    device/lenovo/avr/modules/rproc_qcom_common.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/rproc_qcom_common.ko \
    device/lenovo/avr/modules/cfg80211.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cfg80211.ko \
    device/lenovo/avr/modules/ipam.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/ipam.ko \
    device/lenovo/avr/modules/qca_cld3_wcn7750.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qca_cld3_wcn7750.ko \
    device/lenovo/avr/modules/spi_cnss_proto.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/spi_cnss_proto.ko \
    device/lenovo/avr/modules/rmnet_core.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/rmnet_core.ko \
    device/lenovo/avr/modules/rmnet_mem.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/rmnet_mem.ko \
    device/lenovo/avr/modules/rmnet_ctl.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/rmnet_ctl.ko \
    device/lenovo/avr/modules/rmnet_wlan.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/rmnet_wlan.ko \
    device/lenovo/avr/modules/smem-mailbox.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/smem-mailbox.ko
