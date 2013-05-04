#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/onda/andy/andy-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Board-specific init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/initlogo.rle:root/initlogo.rle \
    $(LOCAL_PATH)/init.andy.rc:root/init.andy.rc \
    $(LOCAL_PATH)/ueventd.andy.rc:root/ueventd.andy.rc

# Board-specific init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/prebuilt/initlogo.rle:root/initlogo.rle\
    $(LOCAL_PATH)/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilt/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh

# bin
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/bin/battery_charging:system/bin/battery_charging \
    $(LOCAL_PATH)/prebuilt/system/bin/cciclean:system/bin/cciclean \
    $(LOCAL_PATH)/prebuilt/system/bin/ccidag:system/bin/ccidag \
    $(LOCAL_PATH)/prebuilt/system/bin/ccihwid:system/bin/ccihwid \
    $(LOCAL_PATH)/prebuilt/system/bin/CKPD-daemon:system/bin/CKPD-daemon \
    $(LOCAL_PATH)/prebuilt/system/bin/cnd:system/bin/cnd \
    $(LOCAL_PATH)/prebuilt/system/bin/diag_klog:system/bin/diag_klog \
    $(LOCAL_PATH)/prebuilt/system/bin/diag_mdlog:system/bin/diag_mdlog \
    $(LOCAL_PATH)/prebuilt/system/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
    $(LOCAL_PATH)/prebuilt/system/bin/fmfc:system/bin/fmfc \
    $(LOCAL_PATH)/prebuilt/system/bin/fmsvc:system/bin/fmsvc \
    $(LOCAL_PATH)/prebuilt/system/bin/geomagneticd:system/bin/geomagneticd \
    $(LOCAL_PATH)/prebuilt/system/bin/hostapd:system/bin/hostapd \
    $(LOCAL_PATH)/prebuilt/system/bin/hostapd_cli:system/bin/hostapd_cli \
    $(LOCAL_PATH)/prebuilt/system/bin/netmgrd:system/bin/netmgrd \
    $(LOCAL_PATH)/prebuilt/system/bin/orientationd:system/bin/orientationd \
    $(LOCAL_PATH)/prebuilt/system/bin/port-bridge:system/bin/port-bridge \
    $(LOCAL_PATH)/prebuilt/system/bin/rmt_storage:system/bin/rmt_storage \
    $(LOCAL_PATH)/prebuilt/system/bin/usbhub:system/bin/usbhub \
    $(LOCAL_PATH)/prebuilt/system/bin/usbhub_init:system/bin/usbhub_init \
    $(LOCAL_PATH)/prebuilt/system/bin/wlan_addr:system/bin/wlan_addr \
    $(LOCAL_PATH)/prebuilt/system/bin/wpa_supplicant:system/bin/wpa_supplicant \
    $(LOCAL_PATH)/prebuilt/system/bin/qmuxd:system/bin/qmuxd \
    

# SD Card
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/etc/gps.conf:system/etc/gps.conf

# misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/etc/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \
    $(LOCAL_PATH)/prebuilt/system/etc/an32155a.cfg:system/etc/an32155a.cfg \
    $(LOCAL_PATH)/prebuilt/system/etc/cci-flex.sh:system/etc/cci-flex.sh \
    $(LOCAL_PATH)/prebuilt/system/etc/pvplayer.cfg:system/etc/pvplayer.cfg \
    $(LOCAL_PATH)/prebuilt/system/etc/voVidDec.dat:system/etc/voVidDec.dat \
    $(LOCAL_PATH)/prebuilt/system/etc/vommcodec.cfg:system/etc/vommcodec.cfg \
    $(LOCAL_PATH)/prebuilt/system/etc/vosfPlay.cfg:system/etc/vosfPlay.cfg \
    $(LOCAL_PATH)/prebuilt/system/ts.conf:system/ts.conf \
    $(LOCAL_PATH)/prebuilt/system/usr/keychars/CCI_penguin_keypad.kcm.bin:system/usr/keychars/CCI_penguin_keypad.kcm.bin \
    $(LOCAL_PATH)/prebuilt/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/prebuilt/system/usr/keylayout/CCI_penguin_keypad.kl:system/usr/keylayout/CCI_penguin_keypad.kl

# audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/etc/nvram.txt:system/etc/nvram.txt \
    $(LOCAL_PATH)/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/prebuilt/bcm4329.ko:system/lib/modules/bcm4329.ko \

# modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/etc/modules/cisf.ko:system/etc/modules/cisf.ko \
    $(LOCAL_PATH)/prebuilt/system/etc/modules/lzo_compress.ko:system/etc/modules/lzo_compress.ko \
    $(LOCAL_PATH)/prebuilt/system/etc/modules/lzo_decompress.ko:system/etc/modules/lzo_decompress.ko \
    $(LOCAL_PATH)/prebuilt/system/etc/modules/nls_utf8.ko:system/etc/modules/nls_utf8.ko \
    $(LOCAL_PATH)/prebuilt/system/etc/modules/ramzswap.ko:system/etc/modules/ramzswap.ko \
    $(LOCAL_PATH)/prebuilt/system/etc/modules/tun.ko:system/etc/modules/tun.ko

# bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/etc/bt_fw.hcd:system/etc/bt_fw.hcd \
    $(LOCAL_PATH)/prebuilt/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/prebuilt/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/prebuilt/system/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf \
    $(LOCAL_PATH)/prebuilt/system/etc/bluetooth/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
    $(LOCAL_PATH)/prebuilt/system/etc/bluetooth/blacklist.conf:system/etc/bluetooth/blacklist.conf \
    $(LOCAL_PATH)/prebuilt/system/etc/bluetooth/input.conf:system/etc/bluetooth/input.conf \
    $(LOCAL_PATH)/prebuilt/system/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf
	
# vendor
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/vendor/firmware/fw_bcm4329.bin:system/vendor/firmware/fw_bcm4329.bin \
    $(LOCAL_PATH)/prebuilt/system/vendor/firmware/fw_bcm4329_apsta.bin:system/vendor/firmware/fw_bcm4329_apsta.bin
	
# fm
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh

# permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/handheld_core_hardware.xml:system/etc/permissions/hanheld_core_hardware.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/com.qualcomm.location.vzw_library.xml:system/etc/permissions/com.qualcomm.location.vzw_library.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/permissions/platform.xml:system/etc/permissions/platform.xml

# boot animation
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxVidEnc \
    libOmxCore \
    bash \
    libOmxVenc \
    libOmxVdec \
    com.android.future.usb.accessory \
    libloc_api-rpc \
    librs_jni \
    gps.andy \
    libcamera

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BRAND := ssdavid
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=1
PRODUCT_NAME := cyanogen_andy
PRODUCT_DEVICE := andy
PRODUCT_MODEL := N401
