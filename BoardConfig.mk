USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/j3popltespr/BoardConfigVendor.mk

BOARD_USES_GENERIC_AUDIO := true

#TARGET_NO_BOOTLOADER := true	does download mode count as bootloader
#TARGET_NO_RADIOIMAGE := true
#TARGET_NO_RPC := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8937

# Platform
TARGET_BOARD_PLATFORM := msm8937

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Architecture
TARGET_ARCH := arm

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

TARGET_CPU_SMP := true

# Kernel
#BOARD_KERNEL_IMAGE_NAME := zImage-dtb
BOARD_KERNEL_SEPARATED_DT := true

BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_BASE := 0x80000000 
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000

#BOARD_FLASH_BLOCK_SIZE := 4096 #131072

BOARD_MKBOOTIMG_ARGS := --base $(BOARD_KERNEL_BASE) --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --pagesize $(BOARD_KERNEL_PAGESIZE) 
#--dt out/target/product/j3popltespr/dt.img

TARGET_USE_MDTP := true
# lrwxrwxrwx root     root              2016-01-04 05:16 mdtp -> /dev/block/mmcblk0p37

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
# MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
# MAX_EGL_CACHE_SIZE := 2048*1024

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728 # 32768 x 4096

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728 # same as above

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 14696841216 # 3588096 x 4096

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USERDATAIMAGE_PARTITION_SIZE := 45612974080 # 11135980 x 4096

BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE := 134217728 # 32768 x 4096

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 1258291200 # 307200 x 4096

#TARGET_KERNEL_SOURCE := kernel/samsung/j3popltespr
#TARGET_KERNEL_CONFIG := msm8937_sec_defconfig
#TARGET_KERNEL_VARIANT_CONFIG := msm8937_sec_j3poplte_usa_spr_defconfig
#TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig

TARGET_PREBUILT_KERNEL := device/samsung/j3popltespr/kernel

TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-

#BOARD_SEPOLICY_DIRS += device/samsung/j3popltespr/sepolicy

#BOARD_HAS_NO_SELECT_BUTTON := true
