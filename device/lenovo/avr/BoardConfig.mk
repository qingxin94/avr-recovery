#
# BoardConfig for Lenovo Legion Y70 (2026) - codename: avr
# SoC: Qualcomm SM8845 (Snapdragon 8 Elite Gen 5, platform: canoe)
# Kernel: 6.12.58-android16-6
# Screen: 3168x1440 WQHD+ AMOLED 144Hz
#

DEVICE_PATH := device/lenovo/avr

# ─── Build tolerance ───
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_NINJA_USES_ENV_VARS += RTIC_MPGEN
BUILD_BROKEN_PLUGIN_VALIDATION := soong-libaosprecovery_defaults soong-libguitwrp_defaults soong-libminuitwrp_defaults soong-vold_defaults

# ─── Architecture (Oryon CPU) ───
TARGET_ARCH             := arm64
TARGET_ARCH_VARIANT     := armv8-a
TARGET_CPU_ABI          := arm64-v8a
TARGET_CPU_ABI2         :=
TARGET_CPU_VARIANT      := generic
TARGET_CPU_VARIANT_RUNTIME := oryon

ENABLE_CPUSETS    := true
ENABLE_SCHEDBOOST := true

# ─── Platform (canoe = SM8845/SM8850) ───
PRODUCT_PLATFORM      := canoe
TARGET_BOOTLOADER_BOARD_NAME := canoe
TARGET_NO_BOOTLOADER  := true
TARGET_USES_UEFI      := true
TARGET_BOARD_PLATFORM := canoe
TARGET_BOARD_PLATFORM_GPU := qcom-adreno840
QCOM_BOARD_PLATFORMS  += canoe

# ─── Kernel ───
TARGET_KERNEL_ARCH        := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_IMAGE_NAME   := Image
BOARD_BOOT_HEADER_VERSION := 4
BOARD_KERNEL_PAGESIZE     := 4096
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_MKBOOTIMG_ARGS      += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS      += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_RAMDISK_USE_LZ4     := true

# Kernel lives in vendor_boot — do NOT embed in recovery.img
BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE := true
BOARD_KERNEL_CMDLINE :=

# ─── Boot / partition sizes ───
BOARD_BOOT_HEADER_VERSION := 4
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296       # 96 MB
BOARD_INIT_BOOT_HEADER_VERSION := 4
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE := 8388608  # 8 MB
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296  # 96 MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728  # 128 MB
BOARD_DTBOIMG_PARTITION_SIZE := 75497472         # 72 MB

# NOTE: do NOT define BOARD_INCLUDE_DTB_IN_BOOTIMG at all (even =false).
# AERA build_make uses `ifdef BOARD_INCLUDE_DTB_IN_BOOTIMG` (core/Makefile ~line 1028):
# merely defining it makes INSTALLED_DTBIMAGE_TARGET := $(PRODUCT_OUT)/dtb.img,
# which then has no build rule → ninja "dtb.img missing". myron/canoe has no such line.

# ─── A/B ───
AB_OTA_UPDATER   := true
BOARD_RECOVERY_NEEDS_BOOTLOADER_CONTROL := true
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    init_boot \
    odm \
    product \
    system \
    system_dlkm \
    system_ext \
    vbmeta \
    vbmeta_system \
    vendor \
    vendor_boot \
    vendor_dlkm

BOARD_USES_RECOVERY_AS_BOOT := false

# ─── Dynamic partitions ───
BOARD_SUPER_PARTITION_SIZE := 16441663488
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 16437469184
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    system_ext \
    product \
    vendor \
    vendor_dlkm \
    system_dlkm \
    odm

# ─── Filesystem ───
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_COPY_OUT_VENDOR     := vendor
BOARD_USES_VENDOR_DLKMIMAGE := true
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm
BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := erofs
TARGET_COPY_OUT_ODM := odm
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := erofs

# ─── FBE / crypto ───
BOARD_USES_METADATA_PARTITION  := true
BOARD_USES_QCOM_FBE_DECRYPTION := true
AERA_INCLUDE_CRYPTO            := true
AERA_INCLUDE_CRYPTO_FBE        := true
AERA_INCLUDE_FBE_METADATA_DECRYPT := true
AERA_USE_FSCRYPT_POLICY := 2

# Anti-rollback
PLATFORM_VERSION             := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
PLATFORM_SECURITY_PATCH      := 2099-12-31
VENDOR_SECURITY_PATCH        := $(PLATFORM_VERSION)
BOOT_SECURITY_PATCH          := $(PLATFORM_VERSION)

# ─── AVB ───
BOARD_AVB_ENABLE := true
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 0
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 0

# ─── Recovery / UI ───
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/fstab.qcom
AERA_INCLUDE_FASTBOOTD := true
AERA_SKIP_ADDITIONAL_FSTAB := true
AERA_UI_ADAPTIVE_RESOLUTION := true
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
RECOVERY_SDCARD_ON_DATA := true

# Screen: 3168x1440 WQHD+ (confirmed from About phone)
AERA_THEME := portrait_hdpi
AERA_FRAMERATE := 144
TARGET_SCREEN_WIDTH  := 1440
TARGET_SCREEN_HEIGHT := 3168
AERA_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
AERA_DEFAULT_BRIGHTNESS := 2048
AERA_MAX_BRIGHTNESS := 4094
AERA_NO_SCREEN_BLANK := true
AERA_SCREEN_BLANK_ON_BOOT := true
AERA_STATUS_ICONS_ALIGN := center

# ─── Storage tools ───
TARGET_USES_MKE2FS := true
AERA_ENABLE_FS_COMPRESSION := true
AERA_INCLUDE_FUSE_EXFAT := true
AERA_INCLUDE_FUSE_NTFS := true
AERA_INCLUDE_NTFS_3G := false
AERA_NO_EXFAT_FUSE := true

# ─── Tools ───
AERA_INCLUDE_7ZA := true
AERA_INCLUDE_LIBRESETPROP := true
AERA_INCLUDE_LPDUMP := true
AERA_INCLUDE_LPTOOLS := true
AERA_INCLUDE_REPACKTOOLS := true
AERA_INCLUDE_RESETPROP := true
AERA_USE_TOOLBOX := true
AERA_ENABLE_ALL_PARTITION_TOOLS := true
AERA_USE_DMCTL := true
AERA_DEFAULT_TIMEZONE := Asia/Shanghai

# ─── Vendor modules (touch + MMI + battery + WCN7750 WiFi + full dependency chain) ───
# 82 modules total: complete BFS dependency closure from vendor_boot ramdisk + vendor_dlkm
# Load order: topological (dependencies first). modules.dep included for Modprobe.
AERA_LOAD_VENDOR_MODULES := "cmd-db.ko icc-clk.ko clk-qcom.ko pinctrl-msm.ko qcom-scm.ko smem.ko socinfo.ko msm_dma_iommu_mapping.ko qcom_iommu_util.ko qcom_dma_heaps.ko mem-prot.ko secure_buffer.ko mem_buf_dev.ko deferred-free-helper.ko qcom_aoss.ko qcom_glink.ko qcom_glink_smem.ko qcom_smd.ko smem-mailbox.ko qmi_helpers.ko qcom_pdr_msg.ko pdr_interface.ko qcom_ramdump.ko minidump.ko memory_dump_v2.ko qcom_va_minidump.ko qcom_ipc_logging.ko debug_symbol.ko proxy-consumer.ko gdsc-regulator.ko debug-regulator.ko qti-regmap-debugfs.ko mmi_annotate.ko mmi_info.ko mmi_relay.ko moto_reboot_reason.ko panel_event_notifier.ko sensors_class.ko sched-walt.ko crm-v2.ko mdt_loader.ko gh_arm_drv.ko gh_dbl.ko gh_msgq.ko gh_rm_drv.ko gh_mem_notifier.ko gh_rm_heap_manager.ko gsim.ko pcie-pdc.ko pci-msm-drv.ko mhi.ko redriver.ko repeater.ko cnss_prealloc.ko cnss_nl.ko cnss_utils.ko cnss_plat_ipc_qmi_svc.ko rproc_qcom_common.ko spi_cnss_proto.ko rfkill.ko cfg80211.ko wlan_firmware_service.ko cnss2.ko icnss2.ko qca_cld3_wcn7750.ko rmnet_mem.ko rmnet_ctl.ko rmnet_core.ko rmnet_wlan.ko ipam.ko qti_pmic_glink.ko bm_adsp_ulog.ko charger-ulog-glink.ko qti_battery_charger.ko qti_glink_charger_v2.ko mmi_glink_charger.ko qpnp_adaptive_charge.ko dwc3-msm.ko usb_f_gsi.ko goodix_brl_thp.ko touchscreen_mmi.ko wcd_usbss_i2c.ko"
AERA_LOAD_VENDOR_MODULES_EXCLUDE_GKI := true
AERA_LOAD_PREBUILT_MODULES_AT_FIRST := true
AERA_LOAD_VENDOR_BOOT_MODULES := true
AERA_NO_LEGACY_PROPS := true

# Battery (AERA defaults to /sys/class/power_supply/battery; align with myron — no custom vars)
AERA_BATTERY_SYSFS_WAIT_SECONDS := 5

# USB
AERA_EXCLUDE_DEFAULT_USB_INIT := true
TARGET_RECOVERY_USB_VENDOR_ID := 0x22b8
TARGET_RECOVERY_USB_PRODUCT_ID_ADB := 0x2e81
TARGET_RECOVERY_USB_PRODUCT_ID_FASTBOOT := 0x2e80

# ─── Misc ───
TARGET_USES_LOGD := true
AERA_INCLUDE_LOGCAT := true
AERA_EXCLUDE_APEX := true
AERA_HAS_EDL_MODE := false
AERA_USE_SERIALNO_PROPERTY_FOR_DEVICE_ID := true
AERA_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone45/temp"
AERA_EXTRA_LANGUAGES := true
AERA_DEFAULT_LANGUAGE := en
AERA_DEVICE_VERSION := LENOVO_Y70_AVR
AERA_INCLUDE_OMAPI := true
HAVE_SELINUX := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
