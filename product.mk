# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

# Google Apps
ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
endif

# Signing
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey
PRODUCT_EXTRA_RECOVERY_KEYS := vendor/certs/releasekey

#ifeq ($(filter lineage_ether,$(PRODUCT_NAME)),)
#PRODUCT_PACKAGES += \
#    init.jav.usb.rc
#endif

# Huawei stuff
#ifeq ($(filter lineage_berkeley,$(PRODUCT_NAME)),)
#PRODUCT_PACKAGES += \
#    HotwordEnrollmentOKGoogleHI6403 \
#    HotwordEnrollmentXGoogleHI6403
#endif

# Volume Steps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=7 \
    ro.config.media_vol_steps=25

# Recovery ADB keys
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:recovery/root/adb_keys
