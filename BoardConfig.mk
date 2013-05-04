USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true
#BOARD_CAMERA_USE_GETBUFFERINFO := true
#BOARD_USE_CAF_LIBCAMERA := true

# inherit from the proprietary version
-include vendor/onda/andy/BoardConfigVendor.mk

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := andy

TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x02e00000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/onda/andy/kernel

# RECOVERY
# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00420000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08200000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0c780000
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_PREBUILT_RECOVERY_KERNEL := device/onda/andy/recovery_kernel
TARGET_RECOVERY_INITRC := device/onda/andy/recovery/root/recovery.rc
BOARD_RECOVERY_ALWAYS_WIPES := false
#BOARD_HAS_NO_SELECT_BUTTON := true


TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBRIL := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# to enable the GPS HAL
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := andy
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_EGL_CFG := device/onda/andy/prebuilt/system/lib/egl/egl.cfg

TARGET_SPECIFIC_HEADER_PATH := device/onda/andy/include
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_FW_STA_PATH         := "/system/etc/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH          := "/system/etc/rtecdc_ap.bin"
WIFI_DRIVER_MODULE_NAME         := "bcm4329"
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/etc/nvram.txt config_path=/data/misc/wifi/config"
WPA_SUPPLICANT_VERSION          := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT

BOARD_FM_DEVICE := bcm4329
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

TARGET_OTA_ASSERT_DEVICE := andy
