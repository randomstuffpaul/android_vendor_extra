# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

# Google Apps
ifeq ($(WITH_GMS), true)
ifeq ($(TARGET_PRODUCT), lineage_ether)
TARGET_ARCH := arm64
else
TARGET_ARCH := arm
endif
-include vendor/gapps/$(TARGET_ARCH)/$(TARGET_ARCH)-vendor.mk
endif

# Volume Steps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=7 \
    ro.config.media_vol_steps=25

# Default to 45 FPS
ifeq ($(TARGET_PRODUCT), lineage_ether)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.display.frame_rate=1
endif

# Recovery ADB keys
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:recovery/root/adb_keys
