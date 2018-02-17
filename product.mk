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

# Recovery ADB keys
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:recovery/root/adb_keys
