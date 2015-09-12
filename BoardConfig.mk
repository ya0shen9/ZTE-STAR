#
# Copyright (C) 2013 The CyanogenMod Project
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

# Copyright (C) 2014 The Android Open Source Project
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

# inherit from the proprietary version
-include vendor/zte/s2002/BoardConfigVendor.mk

LOCAL_PATH := device/zte/s2002

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include
BOARD_VENDOR 				:= zte

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait

TARGET_NO_BOOTLOADER := true

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305
TARGET_BOOTLOADER_NAME := MSM8226
TARGET_BOOTLOADER_BOARD_NAME := MSM8226


# Wifi
TARGET_USES_WCNSS_CTRL := true
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME          := "wlan"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"

# QCOM
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true


# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_ION	:= true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
TARGET_QCOM_DISPLAY_VARIANT := caf-new
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio
AUDIO_FEATURE_DISABLED_ANC_HEADSET := true
AUDIO_FEATURE_DISABLED_DS1_DOLBY_DDP := true
AUDIO_FEATURE_DISABLED_SSR := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_ALSA_AUDIO := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
TARGET_QCOM_AUDIO_VARIANT := caf

# Media
TARGET_QCOM_MEDIA_VARIANT := caf-new

# QCOM enhanced A/V
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DOPPO_CAMERA_HARDWARE

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# GPS
TARGET_NO_RPC := true

# PowerHAL
TARGET_POWERHAL_VARIANT	:= qcom
BOARD_CHARGER_ENABLE_SUSPEND := true

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# Override healthd HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.qcom

## Enable WEBGL in WebKit
ENABLE_WEBGL 						:= true

# Webkit
TARGET_FORCE_CPU_UPLOAD := true

BOARD_HAL_STATIC_LIBRARIES := libdumpstate.msm8226

TARGET_BOARD_INFO_FILE := $(LOCAL_PATH)/board-info.txt

BOARD_KERNEL_CMDLINE 	:= androidboot.hardware=qcom msm_rtb.filter=0x37 no_console_suspend restart.panic_to_dload=0 restart.download_mode=0

BOARD_KERNEL_BASE 		:= 0x00000000
BOARD_KERNEL_PAGESIZE 	:= 2048
BOARD_MKBOOTIMG_ARGS 	:= --ramdisk_offset 0x01000000 --tags_offset 0x00000100 


BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 16777216		#16M  boot
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 16777216		#16M  recovery
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 1288488960	#1.2G system
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 2684354560	#2.5G data
BOARD_FLASH_BLOCK_SIZE 				:= 131072

BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_SOURCE := ../kernel/s2002
TARGET_KERNEL_CONFIG := msm8226_P898S10_defconfig
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk

# Init
TARGET_NO_INITLOGO := true

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_s2002.c

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
#BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 32
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Revcovery
BOARD_HAS_NO_SELECT_BUTTON 			:= true
BOARD_SUPPRESS_EMMC_WIPE			:= true
BOARD_HAS_LARGE_FILESYSTEM 			:= true
TARGET_USERIMAGES_USE_EXT4		 	:= true
BOARD_RECOVERY_ALWAYS_WIPES			:= true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_USES_MMCUTILS				:= true
RECOVERY_FSTAB_VERSION 	:= 2
BOARD_RECOVERY_SWIPE 				:= true
TARGET_RECOVERY_FSTAB 				:= $(LOCAL_PATH)/ramdisk/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT 		:= "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT 		:= \"roboto_15x24.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT 		:= \"fontcn30_18x48.h\"

BOARD_SEPOLICY_DIRS += \
        $(LOCAL_PATH)/sepolicy

# The list below is order dependent
BOARD_SEPOLICY_UNION += \
        file_contexts \
        app.te \
        device.te

TARGET_RELEASETOOLS_EXTENSIONS 		:= $(LOCAL_PATH)

BOARD_USES_QC_TIME_SERVICES := true

# CMHW
ifneq ($(CM_VERSION),)
    BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw/
endif
ifneq ($(MK_VERSION),)
    BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/mkhw/
endif

TARGET_EXCLUDE_GOOGLE_IME := true

PRODUCT_GMS_CLIENTID_BASE := android-cmdc

# Fix DEXPREOPT EXT
PRODUCT_BOOT_JARS := $(subst $(space),:,$(PRODUCT_BOOT_JARS))
