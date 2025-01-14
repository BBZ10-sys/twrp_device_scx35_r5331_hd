LOCAL_PATH := $(call my-dir)

# Include the common device configuration
include $(LOCAL_PATH)/../spreadtrum/common.mk

# Define product-specific variables
PRODUCT_NAME := omni_scx35_r5331_hd
PRODUCT_DEVICE := scx35_r5331_hd
PRODUCT_BRAND := Spreadtrum
PRODUCT_MANUFACTURER := Spreadtrum

# Add product build parameters
PRODUCT_MAKEFILES := $(LOCAL_PATH)/../../spreadtrum/scx35_r5331_hd/omni_$(PRODUCT_DEVICE).mk
