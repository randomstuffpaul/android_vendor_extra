# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

# Google Apps
ifeq ($(WITH_GMS), true)
ifeq ($(filter lineage_arm64,$(PRODUCT_NAME)),)
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
else
$(call inherit-product, vendor/gapps/arm/arm-vendor.mk)
endif
endif

# Volume Steps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=7 \
    ro.config.media_vol_steps=25

# Recovery ADB keys
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:recovery/root/adb_keys
