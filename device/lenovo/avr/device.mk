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

# Copy vendor modules into recovery ramdisk (82 modules, full BFS dependency closure)
# Loaded by AERA framework via AERA_LOAD_VENDOR_MODULES (see BoardConfig.mk)
PRODUCT_COPY_FILES += \
    device/lenovo/avr/modules/cmd-db.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cmd-db.ko \
    device/lenovo/avr/modules/cnss_nl.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cnss_nl.ko \
    device/lenovo/avr/modules/cnss_prealloc.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cnss_prealloc.ko \
    device/lenovo/avr/modules/debug-regulator.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/debug-regulator.ko \
    device/lenovo/avr/modules/debug_symbol.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/debug_symbol.ko \
    device/lenovo/avr/modules/deferred-free-helper.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/deferred-free-helper.ko \
    device/lenovo/avr/modules/gh_arm_drv.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/gh_arm_drv.ko \
    device/lenovo/avr/modules/gh_dbl.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/gh_dbl.ko \
    device/lenovo/avr/modules/gh_msgq.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/gh_msgq.ko \
    device/lenovo/avr/modules/icc-clk.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/icc-clk.ko \
    device/lenovo/avr/modules/mmi_relay.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mmi_relay.ko \
    device/lenovo/avr/modules/moto_reboot_reason.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/moto_reboot_reason.ko \
    device/lenovo/avr/modules/msm_dma_iommu_mapping.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/msm_dma_iommu_mapping.ko \
    device/lenovo/avr/modules/panel_event_notifier.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/panel_event_notifier.ko \
    device/lenovo/avr/modules/pcie-pdc.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/pcie-pdc.ko \
    device/lenovo/avr/modules/proxy-consumer.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/proxy-consumer.ko \
    device/lenovo/avr/modules/gdsc-regulator.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/gdsc-regulator.ko \
    device/lenovo/avr/modules/qcom_ramdump.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qcom_ramdump.ko \
    device/lenovo/avr/modules/qcom-scm.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qcom-scm.ko \
    device/lenovo/avr/modules/mdt_loader.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mdt_loader.ko \
    device/lenovo/avr/modules/mem-prot.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mem-prot.ko \
    device/lenovo/avr/modules/pinctrl-msm.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/pinctrl-msm.ko \
    device/lenovo/avr/modules/qcom_iommu_util.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qcom_iommu_util.ko \
    device/lenovo/avr/modules/qti-regmap-debugfs.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qti-regmap-debugfs.ko \
    device/lenovo/avr/modules/redriver.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/redriver.ko \
    device/lenovo/avr/modules/repeater.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/repeater.ko \
    device/lenovo/avr/modules/rfkill.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/rfkill.ko \
    device/lenovo/avr/modules/cfg80211.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cfg80211.ko \
    device/lenovo/avr/modules/rmnet_mem.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/rmnet_mem.ko \
    device/lenovo/avr/modules/secure_buffer.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/secure_buffer.ko \
    device/lenovo/avr/modules/gh_rm_drv.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/gh_rm_drv.ko \
    device/lenovo/avr/modules/gh_mem_notifier.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/gh_mem_notifier.ko \
    device/lenovo/avr/modules/gh_rm_heap_manager.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/gh_rm_heap_manager.ko \
    device/lenovo/avr/modules/mem_buf_dev.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mem_buf_dev.ko \
    device/lenovo/avr/modules/qcom_dma_heaps.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qcom_dma_heaps.ko \
    device/lenovo/avr/modules/sensors_class.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/sensors_class.ko \
    device/lenovo/avr/modules/smem.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/smem.ko \
    device/lenovo/avr/modules/minidump.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/minidump.ko \
    device/lenovo/avr/modules/memory_dump_v2.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/memory_dump_v2.ko \
    device/lenovo/avr/modules/mmi_annotate.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mmi_annotate.ko \
    device/lenovo/avr/modules/mmi_info.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mmi_info.ko \
    device/lenovo/avr/modules/qcom_ipc_logging.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qcom_ipc_logging.ko \
    device/lenovo/avr/modules/crm-v2.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/crm-v2.ko \
    device/lenovo/avr/modules/clk-qcom.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/clk-qcom.ko \
    device/lenovo/avr/modules/qcom_aoss.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qcom_aoss.ko \
    device/lenovo/avr/modules/qcom_glink.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qcom_glink.ko \
    device/lenovo/avr/modules/qcom_glink_smem.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qcom_glink_smem.ko \
    device/lenovo/avr/modules/qcom_smd.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qcom_smd.ko \
    device/lenovo/avr/modules/qcom_va_minidump.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qcom_va_minidump.ko \
    device/lenovo/avr/modules/gsim.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/gsim.ko \
    device/lenovo/avr/modules/qmi_helpers.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qmi_helpers.ko \
    device/lenovo/avr/modules/cnss_plat_ipc_qmi_svc.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cnss_plat_ipc_qmi_svc.ko \
    device/lenovo/avr/modules/qcom_pdr_msg.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qcom_pdr_msg.ko \
    device/lenovo/avr/modules/rproc_qcom_common.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/rproc_qcom_common.ko \
    device/lenovo/avr/modules/pci-msm-drv.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/pci-msm-drv.ko \
    device/lenovo/avr/modules/mhi.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mhi.ko \
    device/lenovo/avr/modules/pdr_interface.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/pdr_interface.ko \
    device/lenovo/avr/modules/qti_pmic_glink.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qti_pmic_glink.ko \
    device/lenovo/avr/modules/bm_adsp_ulog.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/bm_adsp_ulog.ko \
    device/lenovo/avr/modules/charger-ulog-glink.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/charger-ulog-glink.ko \
    device/lenovo/avr/modules/qti_battery_charger.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qti_battery_charger.ko \
    device/lenovo/avr/modules/qti_glink_charger_v2.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qti_glink_charger_v2.ko \
    device/lenovo/avr/modules/mmi_glink_charger.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/mmi_glink_charger.ko \
    device/lenovo/avr/modules/qpnp_adaptive_charge.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qpnp_adaptive_charge.ko \
    device/lenovo/avr/modules/smem-mailbox.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/smem-mailbox.ko \
    device/lenovo/avr/modules/modules.dep:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/modules.dep \
    device/lenovo/avr/modules/modules.load:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/modules.load \
    device/lenovo/avr/modules/cnss_utils.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cnss_utils.ko \
    device/lenovo/avr/modules/socinfo.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/socinfo.ko \
    device/lenovo/avr/modules/sched-walt.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/sched-walt.ko \
    device/lenovo/avr/modules/spi_cnss_proto.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/spi_cnss_proto.ko \
    device/lenovo/avr/modules/touchscreen_mmi.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/touchscreen_mmi.ko \
    device/lenovo/avr/modules/goodix_brl_thp.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/goodix_brl_thp.ko \
    device/lenovo/avr/modules/wcd_usbss_i2c.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/wcd_usbss_i2c.ko \
    device/lenovo/avr/modules/dwc3-msm.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/dwc3-msm.ko \
    device/lenovo/avr/modules/usb_f_gsi.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/usb_f_gsi.ko \
    device/lenovo/avr/modules/ipam.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/ipam.ko \
    device/lenovo/avr/modules/rmnet_ctl.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/rmnet_ctl.ko \
    device/lenovo/avr/modules/rmnet_core.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/rmnet_core.ko \
    device/lenovo/avr/modules/rmnet_wlan.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/rmnet_wlan.ko \
    device/lenovo/avr/modules/wlan_firmware_service.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/wlan_firmware_service.ko \
    device/lenovo/avr/modules/cnss2.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/cnss2.ko \
    device/lenovo/avr/modules/icnss2.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/icnss2.ko \
    device/lenovo/avr/modules/qca_cld3_wcn7750.ko:$(TARGET_RECOVERY_ROOT_OUT)/lib/modules/qca_cld3_wcn7750.ko \
