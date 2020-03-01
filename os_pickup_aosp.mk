# This file guards most of hardware/qcom/* from
# being used on devices which use hardware/qcom-caf/*

LOCAL_PATH := $(call my-dir)

# Legacy CAF devices still want AOSP keymaster HAL.
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include hardware/qcom/keymaster/Android.mk
endif
include $(call all-makefiles-under,$(LOCAL_PATH))
