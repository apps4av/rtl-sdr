LOCAL_PATH:= $(call my-dir)
LIBRTL_ROOT_REL:= ../..
LIBRTL_ROOT_ABS:= $(LOCAL_PATH)/../..

# libusb
include $(CLEAR_VARS)
LOCAL_MODULE := libusb-prebuilt
LOCAL_SRC_FILES := ${LIBRTL_ROOT_ABS}/../libusb/android/libs/$(TARGET_ARCH_ABI)/libusb1.0.so
include $(PREBUILT_SHARED_LIBRARY)

# libusb
include $(CLEAR_VARS)

LIBRTL_ROOT_REL:= ../..
LIBRTL_ROOT_ABS:= $(LOCAL_PATH)/../..

LOCAL_SRC_FILES := \
  $(LIBRTL_ROOT_REL)/src/librtlsdr.c \
  $(LIBRTL_ROOT_REL)/src/tuner_e4k.c \
  $(LIBRTL_ROOT_REL)/src/tuner_fc0012.c \
  $(LIBRTL_ROOT_REL)/src/tuner_fc0013.c \
  $(LIBRTL_ROOT_REL)/src/tuner_fc2580.c \
  $(LIBRTL_ROOT_REL)/src/tuner_r82xx.c \
  $(LIBRTL_ROOT_REL)/src/convenience/convenience.c \

LOCAL_C_INCLUDES += \
  $(LIBRTL_ROOT_ABS)/src \
  $(LIBRTL_ROOT_ABS)/include \
  ${LIBRTL_ROOT_ABS}/../libusb/libusb

LOCAL_MODULE := librtl

LOCAL_SHARED_LIBRARIES := libusb-prebuilt

include $(BUILD_SHARED_LIBRARY)
