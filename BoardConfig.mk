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

# inherit from common msm8226-common
#-include device/qcom/msm8974/BoardConfig.mk

TARGET_SPECIFIC_HEADER_PATH += device/moto/victara/include

BOARD_VENDOR := motorola-qcom

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
TARGET_BOARD_PLATFORM := msm8974
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait


# Assert
TARGET_OTA_ASSERT_DEVICE := victara

# Board
TARGET_BOARD_INFO_FILE := device/moto/victara/board-info.txt

# Audio
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/moto/victara/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Build
#TARGET_SYSTEMIMAGE_USE_SQUISHER := true

# Camera
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_USE_VENDOR_CAMERA_EXT := true
USE_CAMERA_STUB := false

# Charger
#BOARD_CHARGING_MODE_BOOTING_LPM := /sys/mmi_lpm/lpm_mode

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# GPS
TARGET_NO_RPC := true
TARGET_GPS_HAL_PATH := device/moto/victara/gps
TARGET_PROVIDES_GPS_LOC_API := true

# Graphics
#TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# NFC
TARGET_USES_OS_NFC := true

# Kernel
BOARD_KERNEL_SEPARATED_DT := true
KERNEL_DEFCONFIG := victara_defconfig
TARGET_KERNEL_SOURCE := kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom msm_rtb.filter=0x37 ehci-hcd.park=3 vmalloc=400M utags.blkdev=/dev/block/platform/msm_sdcc.1/by-name/utags androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
BOARD_RAMDISK_OFFSET := 0x02000000 
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 2048

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2902458368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10970071040
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Motorola
TARGET_USES_MOTOROLA_LOG := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760

# Power
TARGET_POWERHAL_VARIANT := qcom

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := false

#RIL
BOARD_PROVIDES_LIBRIL := true

# Recovery
TARGET_RECOVERY_FSTAB := device/moto/victara/ramdisk/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD -DUSE_RIL_VERSION_10
COMMON_GLOBAL_CPPFLAGS += -DNO_SECURE_DISCARD -DUSE_RIL_VERSION_10

# Release tools
TARGET_RELEASETOOLS_EXTENSIONS := device/moto/victara

# SELinux

-include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/moto/victara/sepolicy

BOARD_SEPOLICY_UNION += \
    adspd.te \
    atvc.te \
    batt_health.te \
    device.te \
    file_contexts \
    file.te \
    fsg_file.te \
    healthd.te \
    init_shell.te \
    init.te \
    installd.te \
    keystore.te \
    mediaserver.te \
    mm-qcamerad.te \
    mpdecision.te \
    rild.te \
    rmt_storage.te \
    stm401.te \
    system_app.te \
    system_server.te \
    thermal-engine.te \
    ueventd.te \
    vold.te \
    wpa.te

# Vendor init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_victara
TARGET_LIBINIT_DEFINES_FILE := device/moto/victara/init/init_victara.c

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 40

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_USES_WCNSS_CTRL := true
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_FW_PATH_STA   := "sta"
WIFI_DRIVER_FW_PATH_AP    := "ap"
