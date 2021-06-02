VENDOR_PATH := vendor/PocoParts

# PocoParts
PRODUCT_SOONG_NAMESPACES += \
    vendor/PocoParts

PRODUCT_PACKAGES += \
    PocoParts \
    XiaomiDoze \
    XiaomiDirac

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
-include $(VENDOR_PATH)/vendor_prop.mk
