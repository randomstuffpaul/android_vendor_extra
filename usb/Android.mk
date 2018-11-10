LOCAL_PATH:= $(call my-dir)

ifneq ($(filter ether,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.jav.usb.rc
LOCAL_INSTALLED_MODULE_STEM := init.nbq.usb.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.jav.usb.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_OVERRIDES_PACKAGES := init.nbq.usb.rc
include $(BUILD_PREBUILT)

endif
