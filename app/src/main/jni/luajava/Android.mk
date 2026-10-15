LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CFLAGS := -Wno-pointer-to-int-cast -Wno-int-to-pointer-cast
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../lua
LOCAL_CFLAGS += -std=c99

CAL_ARM_MODE := arm64
TARGET_PLATFORM := android-21
TARGET_ABI := android-21-arm64-v8a

LOCAL_MODULE    := luajava
LOCAL_SRC_FILES := luajava.c
LOCAL_LDLIBS += -L$(SYSROOT)/usr/lib -llog -ldl
LOCAL_STATIC_LIBRARIES := liblua

include $(BUILD_SHARED_LIBRARY)
