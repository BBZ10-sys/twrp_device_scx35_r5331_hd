$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/Spreadtrum/scx35_r5331_hd/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := scx35_r5331_hd
PRODUCT_NAME := omni_scx35_r5331_hd_dt
PRODUCT_BRAND := Spreadtrum
PRODUCT_MODEL := BlackBerry Z10
PRODUCT_MANUFACTURER := Spreadtrum

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Spreadtrum/scx35_r5331_hd_dt/scx35_r5331_hd:4.4.2/BlackBerry/eng.gjl.20160607.165211:user/test-keys" \
    PRIVATE_BUILD_DESC="scx35_r5331_hd_dt-user 4.4.2 BlackBerry 14B_eng.gjl.20160607.165211 test-keys"
