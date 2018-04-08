# Inherit from those products. Most specific first.
$(call inherit-product, device/xiaomi/whyred/BoardConfig.mk)
include build/make/target/product/treble_common.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from mido device
$(call inherit-product, device/xiaomi/whyred/device.mk)

# Device identifier. This must come after all inclusions
TARGET_VENDOR := Xiaomi
PRODUCT_DEVICE := whyred
PRODUCT_NAME := full_whyred
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 5 Pro
PRODUCT_MANUFACTURER := Xiaomi