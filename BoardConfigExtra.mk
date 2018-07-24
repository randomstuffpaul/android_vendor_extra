# Use Snapdragon LLVM if available on build server
TARGET_USE_SDCLANG := true

# Don't dexpreopt apps
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true

# Filesystem
TARGET_USES_MKE2FS := true
