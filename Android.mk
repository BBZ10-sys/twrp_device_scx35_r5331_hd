ifneq ($(filter scx35_r5331_hd,$(TARGET_DEVICE)),)

LOCAL_PATH := device/Spreadtrum/scx35_r5331_hd

include $(call all-makefiles-under,$(LOCAL_PATH))

endif

