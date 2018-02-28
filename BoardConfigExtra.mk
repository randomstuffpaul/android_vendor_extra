# Use Snapdragon LLVM if available on build server
TARGET_USE_SDCLANG := true

## Environment variables, setting this here DOES NOT WORK
# Don't use jack
ANDROID_COMPILE_WITH_JACK := false

# Append time of day to compiled build zip
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

 # Include GApps
WITH_GMS := true

# Include SU
WITH_SU := true
