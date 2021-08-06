VENDOR_PATH := vendor/PocoParts

# Files Dirac
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/vendor/lib/libDiracAPI_SHARED.so:$(TARGET_COPY_OUT_VENDOR)/lib/libDiracAPI_SHARED.so \
    $(VENDOR_PATH)/vendor/lib/soundfx/libdirac.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdirac.so \
    $(VENDOR_PATH)/vendor/etc/diracmobile.config:$(TARGET_COPY_OUT_VENDOR)/etc/diracmobile.config \
    $(VENDOR_PATH)/vendor/etc/diracvdd.bin:$(TARGET_COPY_OUT_VENDOR)/etc/diracvdd.bin

# PocoParts
PRODUCT_SOONG_NAMESPACES += \
    vendor/PocoParts

PRODUCT_PACKAGES += \
    PocoParts \
    XiaomiDoze \
    XiaomiDirac \
    XiaomiParts

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/PocoParts/privapp-permissions-parts.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-parts.xml \

PRODUCT_COPY_FILES += \
    vendor/PocoParts/init/init.pocoparts.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.pocoparts.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
   $(VENDOR_PATH)/overlay

# Sepolicy
BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy

# Vendor properties
include $(VENDOR_PATH)/vendor_prop.mk
