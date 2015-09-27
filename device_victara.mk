#
# Copyright (C) 2015 The AOSParadox Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PACKAGE_OVERLAYS += device/moto/victara/overlay
PRODUCT_PACKAGE_OVERLAYS += device/moto/victara/overlay

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, vendor/motorola/victara/victara-vendor.mk)

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

#CAF Branch
PRODUCT_PROPERTY_OVERRIDES += \
    ro.par.branch=LA.BF.1.1.2_rb1.24

#WCNSS
PRODUCT_PACKAGES += \
    WCNSS_qcom_wlan_factory_nv.bin \
    WCNSS_qcom_cfg.ini

PRODUCT_COPY_FILES += \
    device/qcom/msm8974/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/moto/victara/ramdisk,root)

# Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/moto/victara/prebuilt/system,system)

#Call CodeAurora MSM8974 Tree
include device/qcom/msm8974/msm8974.mk

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Motorola-specific permissions
PRODUCT_COPY_FILES += \
    device/moto/victara/permissions/com.motorola.actions.xml:system/etc/permissions/com.motorola.actions.xml \
    device/moto/victara/permissions/com.motorola.android.dm.service.xml:system/etc/permissions/com.motorola.android.dm.service.xml \
    device/moto/victara/permissions/com.motorola.android.encryption_library.xml:system/etc/permissions/com.motorola.android.encryption_library.xml \
    device/moto/victara/permissions/com.motorola.android.tcmd.xml:system/etc/permissions/com.motorola.android.tcmd.xml \
    device/moto/victara/permissions/com.motorola.aon.quickpeek.xml:system/etc/permissions/com.motorola.aon.quickpeek.xml \
    device/moto/victara/permissions/com.motorola.aov.xml:system/etc/permissions/com.motorola.aov.xml \
    device/moto/victara/permissions/com.motorola.avatar.xml:system/etc/permissions/com.motorola.avatar.xml \
    device/moto/victara/permissions/com.motorola.camerabgproc_library.xml:system/etc/permissions/com.motorola.camerabgproc_library.xml \
    device/moto/victara/permissions/com.motorola.camera.xml:system/etc/permissions/com.motorola.camera.xml \
    device/moto/victara/permissions/com.motorola.fpsmotosignature.xml:system/etc/permissions/com.motorola.fpsmotosignature.xml \
    device/moto/victara/permissions/com.motorola.frameworks.core.addon.xml:system/etc/permissions/com.motorola.frameworks.core.addon.xml \
    device/moto/victara/permissions/com.motorola.gallery.xml:system/etc/permissions/com.motorola.gallery.xml \
    device/moto/victara/permissions/com.motorola.haptic.xml:system/etc/permissions/com.motorola.haptic.xml \
    device/moto/victara/permissions/com.motorola.moodle.library.xml:system/etc/permissions/com.motorola.moodle.library.xml \
    device/moto/victara/permissions/com.motorola.motodisplay.pd.screenoff.xml:system/etc/permissions/com.motorola.motodisplay.pd.screenoff.xml \
    device/moto/victara/permissions/com.motorola.motosignature.xml:system/etc/permissions/com.motorola.motosignature.xml \
    device/moto/victara/permissions/com.motorola.moto.xml:system/etc/permissions/com.motorola.moto.xml \
    device/moto/victara/permissions/com.motorola.pixelpipe.xml:system/etc/permissions/com.motorola.pixelpipe.xml \
    device/moto/victara/permissions/com.motorola.sensorhub.stm401.xml:system/etc/permissions/com.motorola.sensorhub.stm401.xml \
    device/moto/victara/permissions/com.motorola.slpc.xml:system/etc/permissions/com.motorola.slpc.xml \
    device/moto/victara/permissions/com.motorola.software.bodyguard.xml:system/etc/permissions/com.motorola.software.bodyguard.xml \
    device/moto/victara/permissions/com.motorola.software.guideme.xml:system/etc/permissions/com.motorola.software.guideme.xml \
    device/moto/victara/permissions/com.motorola.software.smartnotifications.xml:system/etc/permissions/com.motorola.software.smartnotifications.xml \
    device/moto/victara/permissions/com.motorola.software.x_line.xml:system/etc/permissions/com.motorola.software.x_line.xml \
    device/moto/victara/permissions/com.motorola.targetnotif.xml:system/etc/permissions/com.motorola.targetnotif.xml

PRODUCT_CHARACTERISTICS := nosdcard


# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audiod \
    audio_policy.msm8974 \
    audio.primary.msm8974 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

PRODUCT_PACKAGES += \
    mbhc.bin \
    wcd9310_anc.bin

# Audio configuration
PRODUCT_COPY_FILES += \
    device/moto/victara/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/moto/victara/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/moto/victara/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/moto/victara/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    qcom.bt.le_dev_pwr_class=1 \
    ro.bluetooth.dun=false \
    ro.qualcomm.bt.hci_transport=smd \
    ro.bluetooth.sap=false \
    ro.qualcomm.bluetooth.sap=false \
    ro.qualcomm.bluetooth.ftp=true \
    ro.qualcomm.bluetooth.hfp=true \
    ro.qualcomm.bluetooth.hsp=true \
    ro.qualcomm.bluetooth.map=true \
    ro.qualcomm.bluetooth.nap=true \
    ro.qualcomm.bluetooth.opp=true \
    ro.qualcomm.bluetooth.pbap=true

# Camera
PRODUCT_PACKAGES += \
    camera.msm8974

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Display
PRODUCT_PACKAGES += \
    copybit.msm8974 \
    gralloc.msm8974 \
    hwcomposer.msm8974 \
    libgenlock \
    memtrack.msm8974

# GPS
PRODUCT_COPY_FILES += \
    device/moto/victara/gps/etc/gps.conf:system/etc/gps.conf \
    device/moto/victara/gps/etc/flp.conf:system/etc/flp.conf \
    device/moto/victara/gps/etc/izat.conf:system/etc/izat.conf \
    device/moto/victara/gps/etc/sap.conf:system/etc/sap.conf \
    device/moto/victara/gps/etc/quipc.conf:system/etc/quipc.conf \
    device/moto/victara/gps/etc/xtra_root_cert.pem:system/etc/xtra_root_cert.pem \
    device/moto/victara/gps/etc/xtwifi.conf:system/etc/xtwifi.conf

PRODUCT_PACKAGES += \
    gps.msm8974

PRODUCT_PROPERTY_OVERRIDES +=
    ro.gps.agps_provider=1 
    ro.qc.sdk.izat.premium_enabled=1
    ro.qc.sdk.izat.service_mask=0x5
    persist.gps.qc_nlp_in_use=1
    persist.loc.nlp_name=com.qualcomm.services.location

# Hardware
#PRODUCT_PROPERTY_OVERRIDES += \
#    qemu.hw.mainkeys=0

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8974

# Lights
PRODUCT_PACKAGES += \
    lights.msm8974

# Media codecs
PRODUCT_COPY_FILES += \
    device/moto/victara/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/moto/victara/configs/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    nfc_nci.bcm2079x.default \
    NfcNci \
    Tag \
    com.android.nfc_extras

PRODUCT_COPY_FILES += \
    device/moto/victara/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/moto/victara/nfc/libnfc-brcm-20795a10.conf:system/etc/libnfc-brcm-20795a10.conf

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libdashplayer \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Power
PRODUCT_PACKAGES += \
    power.qcom

# Qualcomm
#PRODUCT_PROPERTY_OVERRIDES += \
#    com.qc.hardware=true \
#    ro.qualcomm.cabl=0 \
#    ro.vendor.extension_library=/system/vendor/lib/libqc-opt.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.dfr_mode_set=1 \
    persist.radio.no_wait_for_card=1
    persist.radio.mode_pref_nv10=1
    persist.radio.call_type=1

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=true
    persist.fuse_sdcard=true
    ro.crypto.fuse_sdcard=true

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

PRODUCT_PROPERTY_OVERRIDES += \
    ro.usb.mtp=0x2e82 \
    ro.usb.mtp_adb=0x2e76 \
    ro.usb.ptp=0x2e83 \
    ro.usb.ptp_adb=0x2e84 \
    ro.usb.bpt=0x2e28 \
    ro.usb.bpt_adb=0x2e29 \
    ro.usb.bpteth=0x2e2a \
    ro.usb.bpteth_adb=0x2e2b

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    libwpa_client \
    wcnss_service \
    wpa_supplicant

PRODUCT_COPY_FILES += \
	device/moto/victara/configs/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf

PRODUCT_COPY_FILES += \
    device/moto/victara/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/moto/victara/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/moto/victara/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    device/moto/victara/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/moto/victara/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/moto/victara/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
