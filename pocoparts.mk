VENDOR_PATH := vendor/PocoParts

# PocoParts
PRODUCT_SOONG_NAMESPACES += \
    vendor/PocoParts

PRODUCT_PACKAGES += \
    PocoParts \
    XiaomiDoze

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/PocoParts/privapp-permissions-parts.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-parts.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
   $(VENDOR_PATH)/overlay
