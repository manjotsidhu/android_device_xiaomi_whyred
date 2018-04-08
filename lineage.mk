include build/make/target/product/treble_common.mk
$(call inherit-product, device/xiaomi/whyred/full_whyred.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, device/lineage/sepolicy/common/sepolicy.mk)

PRODUCT_NAME := lineage_whyred
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
