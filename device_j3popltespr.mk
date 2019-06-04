$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/j3popltespr/j3popltespr-vendor.mk)

$(call inherit-product, build/target/product/full.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/j3popltespr/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/j3popltespr/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_LOCALES += en_US ko_KR ja_JP

PRODUCT_CHARACTERISTICS	:= chameleon

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Ramdisk
PRODUCT_PACKAGES += \
     mke2fs.conf 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/init.qcom.sensors.sh:root/init.qcom.sensors.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.factory.rc:root/init.qcom.factory.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.carrier.rc:root/init.carrier.rc \
    $(LOCAL_PATH)/rootdir/init.class_main.sh:root/init.class_main.sh \
    $(LOCAL_PATH)/rootdir/init.container.rc:root/init.container.rc \
    $(LOCAL_PATH)/rootdir/init.mdm.sh:root/init.mdm.sh \
    $(LOCAL_PATH)/rootdir/init.msm.usb.configfs.rc:root/init.msm.usb.configfs.rc \
    $(LOCAL_PATH)/rootdir/init.rilcarrier.rc:root/init.rilcarrier.rc \
    $(LOCAL_PATH)/rootdir/init.rilchip.rc:root/init.rilchip.rc \
    $(LOCAL_PATH)/rootdir/init.rilcommon.rc:root/init.rilcommon.rc \
    $(LOCAL_PATH)/rootdir/init.rilepdg.rc:root/init.rilepdg.rc \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/rootdir/init.usb.configfs.rc:root/init.usb.configfs.rc \
    $(LOCAL_PATH)/rootdir/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/rootdir/init.zygote32.rc:root/init.zygote32.rc 

ADDITIONAL_DEFAULT_PROPERTIES += \
    rild.libpath=/system/lib/libsec-ril.so \
    persist.cne.feature=0 \
    persist.radio.lte_vrte_ltd=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.add_power_save=1 \
    persist.data.netmgrd.qos.enable=false \
    persist.data.mode=concurrent \
    persist.data.dpm.enable=true \
    persist.data.dropssdp=false \
    persist.data.ibfc.enable=true \
    persist.radio.snapshot_enabled=1 \
    persist.radio.snapshot_timer=22 \
    persist.eons.enabled=true \
    telephony.lteOnCdmaDevice=1 \
    persist.security.ams.enforcing=3 \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    ro.adb.secure=0 \
    ro.zygote=zygote32 \
    dalvik.vm.image-dex2oat-Xms=64m \
    dalvik.vm.image-dex2oat-Xmx=64m \
    dalvik.vm.dex2oat-Xms=64m \
    dalvik.vm.dex2oat-Xmx=512m \
    ro.dalvik.vm.native.bridge=0 \
    debug.atrace.tags.enableflags=0 \
    persist.sys.usb.config=mtp 

# pasted
PRODUCT_PACKAGES += \
    BasicDreams \
    Browser \
    Contacts \
    DocumentsUI \
    DownloadProviderUi \
    ExternalStorageProvider \
    KeyChain \
    PicoTts \
    PacProcessor \
    ProxyHandler \
    SharedStorageBackup \
    VpnDialogs

# ProfessionalAudio
PRODUCT_PACKAGES += \
    libjackshm \
    libjackserver \
    libjack \
    libjacklogger \
    androidshmservice \
    jackd \
    jack_dummy \
    jack_alsa \
    jack_opensles \
    jack_loopback \
    in \
    out \
    jack_connect \
    jack_disconnect \
    jack_lsp \
    jack_showtime \
    jack_simple_client \
    jack_transport \
    libasound \
    libglib-2.0 \
    libgthread-2.0 \
    libfluidsynth


# e2fsprog
PRODUCT_PACKAGES += \
    e2fsck \
    resize2fs

# libexifa
PRODUCT_PACKAGES += \
    libexifa

# libjpega
PRODUCT_PACKAGES += \
    libjpega

# KeyUtils
PRODUCT_PACKAGES += \
    libkeyutils
    
# libnfnetlink
PRODUCT_PACKAGES += \
		libnfnetlink

# brctl
PRODUCT_PACKAGES += \
		brctl \
		libbridge

# e2fsprogs_blocks
PRODUCT_PACKAGES += \
		libext2fs_blocks \
		e2image_blocks \
		filefrag_blocks
		
# ims_voice_engine
PRODUCT_PACKAGES += \
		libpcmnb \
		libevs_float

PRODUCT_PACKAGES += \
		libmemalloc
