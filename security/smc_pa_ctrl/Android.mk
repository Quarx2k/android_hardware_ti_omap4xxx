ifeq ($(TARGET_BOARD_PLATFORM),omap4)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false
LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES:= \
	smc_pa_ctrl.c smc_pa_ctrl_linux.c

ifdef S_VERSION_BUILD
LOCAL_CFLAGS += -DS_VERSION_BUILD=$(S_VERSION_BUILD)
endif

LOCAL_LDLIBS += -llog

LOCAL_CFLAGS += -DLINUX
LOCAL_CFLAGS += -DANDROID
LOCAL_CFLAGS += -I $(LOCAL_PATH)/../tf_sdk/include/

LOCAL_MODULE:= smc_pa_ctrl
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
endif
