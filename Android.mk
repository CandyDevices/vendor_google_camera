LOCAL_PATH := $(call my-dir)

candy_device := $(patsubst %f,%,$(subst candy_,,$(TARGET_PRODUCT)))

ifneq ($(filter fajita,$(candy_device)),)

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleCamera-fajita
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := system/priv-app/GoogleCamera/GoogleCamera.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app
LOCAL_OVERRIDES_PACKAGES := Camera2
include $(BUILD_PREBUILT)

endif
