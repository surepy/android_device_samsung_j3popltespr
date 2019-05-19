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

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_PACKAGES += \
    fstab.qcom \
    initlogo.rle \
    init.bt.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.rc \
    init.zygote32.rc \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf

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