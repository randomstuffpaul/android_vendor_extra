# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

# Google Apps
ifeq ($(WITH_GMS), true)
ifneq ($(filter lineage_hlte,$(PRODUCT_NAME)),)
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)
endif
endif

# Recovery ADB keys
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:recovery/root/adb_keys
