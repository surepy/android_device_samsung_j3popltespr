USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/j3popltespr/BoardConfigVendor.mk

# Platform Path
PLATFORM_PATH := device/samsung/j3popltespr

# ??
BOARD_HAS_DOWNLOAD_MODE := true
#TARGET_NO_RADIOIMAGE := true
#TARGET_NO_RPC := true

# Bootloader
#TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8937

# Platform
TARGET_BOARD_PLATFORM := msm8937

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

#TARGET_PREFER_32_BIT := true

# Architecture
#TARGET_ARCH 	    	:= arm64
#TARGET_ARCH_VARIANT 	:= armv8-a
#TARGET_CPU_ABI 		:= arm64-v8a
#TARGET_CPU_ABI2 	:= armeabi
#TARGET_CPU_VARIANT 	:= cortex-a53

# Second architecture
#TARGET_2ND_ARCH 	:= arm
#TARGET_2ND_ARCH_VARIANT := armv7-a-neon
#TARGET_2ND_CPU_ABI 	:= armeabi-v7a
#TARGET_2ND_CPU_ABI2 	:= armeabi
#TARGET_2ND_CPU_VARIANT 	:= cortex-a53

#TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
#TARGET_USES_32_BIT_BINDER := true
#TARGET_USES_64_BIT_BINDER := true
#TARGET_SUPPORTS_32_BIT_APPS := true
#TARGET_SUPPORTS_64_BIT_APPS := false

# audio
BOARD_USES_GENERIC_AUDIO := true
HAVE_HTC_AUDIO_DRIVER := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := zImage #-dtb
BOARD_KERNEL_SEPARATED_DT := true

BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom 
BOARD_KERNEL_CMDLINE += user_debug=23 msm_rtb.filter=0x237 ehci-hcd.park=3 
BOARD_KERNEL_CMDLINE += androidboot.bootdevice=7824900.sdhci 
#androidboot.selinux=enforcing

BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x80000000 
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000

TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/samsung/j3popltespr
TARGET_KERNEL_CONFIG := msm8937_sec_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8937_sec_j3poplte_usa_spr_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-

#TARGET_PREBUILT_KERNEL := device/samsung/j3popltespr/kernel

BOARD_MKBOOTIMG_ARGS := --base $(BOARD_KERNEL_BASE) --kernel_offset $(BOARD_KERNEL_OFFSET) 
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) 

# ? 

TARGET_USE_MDTP := true

# Dexpreopt
# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      DONT_DEXPREOPT_PREBUILTS := true
      WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := false
      WITH_DEXPREOPT := true
    endif
  endif
endif

# EGL
# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024
# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Build and enable the OpenGL ES View renderer. When running on the emulator,
# the GLES renderer disables itself if host GL acceleration isn't available.
#USE_OPENGL_RENDERER := true

# Set the phase offset of the system's vsync event relative to the hardware
# vsync. The system's vsync event drives Choreographer and SurfaceFlinger's
# rendering. This value is the number of nanoseconds after the hardware vsync
# that the system vsync event will occur.
#
# This phase offset allows adjustment of the minimum latency from application
# wake-up (by Choregographer) time to the time at which the resulting window
# image is displayed.  This value may be either positive (after the HW vsync)
# or negative (before the HW vsync).  Setting it to 0 will result in a
# minimum latency of two vsync periods because the app and SurfaceFlinger
# will run just after the HW vsync.  Setting it to a positive number will
# result in the minimum latency being:
#
#     (2 * VSYNC_PERIOD - (vsyncPhaseOffsetNs % VSYNC_PERIOD))
#
# Note that reducing this latency makes it more likely for the applications
# to not have their window content image ready in time.  When this happens
# the latency will end up being an additional vsync period, and animations
# will hiccup.  Therefore, this latency should be tuned somewhat
# conservatively (or at least with awareness of the trade-off being made).
#VSYNC_EVENT_PHASE_OFFSET_NS := 0

# Partitions
BOARD_FLASH_BLOCK_SIZE := 4096

# used lockdev --getsize64 /dev/block/platform/soc/*/by-name/*
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432 # same as above

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3674210304

#BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

#TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 11403243520

#BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432 # 8192 x 4096

#BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800 # 76800 x 4096

#TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# wtf
ifeq ($(TARGET_PRODUCT),sdk)
  # include an expanded selection of fonts for the SDK.
  EXTENDED_FONT_FOOTPRINT := true
endif

# Recovery
TARGET_RECOVERY_INITRC := $(PLATFORM_PATH)/rootdir/init.qcom.rc
TARGET_RECOVERY_FSTAB := $(PLATFORM_PATH)/rootdir/etc/recovery.fstab

# BT definitions for Qualcomm solution
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
TARGET_USE_QTI_BT_STACK := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(PLATFORM_COMMON_PATH)/bluetooth
WCNSS_FILTER_USES_SIBS := true

ifeq ($(WITH_TWRP),true)
-include $(COMMON_PATH)/twrp.mk
endif
