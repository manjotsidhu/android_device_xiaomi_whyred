#Use a more decent APN config
PRODUCT_COPY_FILES += \
	device/xiaomi/whyred/etc/apns-full-conf.xml:system/etc/apns-conf.xml
	
PRODUCT_COPY_FILES := \
	frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += device/xiaomi/whyred/sepolicy
DEVICE_PACKAGE_OVERLAYS += device/xiaomi/whyred/overlay	

$(call inherit-product, device/xiaomi/whyred/vndk/vndk.mk)

#VNDK config files
PRODUCT_COPY_FILES += \
	device/xiaomi/whyred/vndk-detect:system/bin/vndk-detect \
	device/xiaomi/whyred/vndk.rc:system/etc/init/vndk.rc \
	device/xiaomi/whyred/ld.config.26.txt:system/etc/ld.config.26.txt \
	device/xiaomi/whyred/ld.config.27.txt:system/etc/ld.config.27.txt \
	
#USB Audio
PRODUCT_COPY_FILES += \
	frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
	device/xiaomi/whyred/resize-system.sh:system/bin/resize-system.sh

PRODUCT_PACKAGES += \
	treble-environ-rc	