# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from willow device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := willow
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_willow
PRODUCT_MODEL := Redmi Note 8T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := willow
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="willow-user 9 PKQ1.190616.001 V10.3.5.0.PCXEUXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := xiaomi/willow_eea/willow:9/PKQ1.190616.001/V10.3.5.0.PCXEUXM:user/release-keys
