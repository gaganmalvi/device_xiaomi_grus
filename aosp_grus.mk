#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/grus
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_APPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_DISABLE_ALTERNATIVE_FACE_UNLOCK := false

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from land device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_grus
PRODUCT_DEVICE := grus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9 SE
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/flame/flame:10/QQ3A.200605.001/6392402:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="flame-user 10 QQ3A.200605.001 6392402 release-keys" \
    PRODUCT_NAME="grus" \
    TARGET_DEVICE="grus"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/flame/flame:10/QQ3A.200605.001/6392402:user/release-keys 

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
PRODUCT_PACKAGES_DEBUG := false
PRODUCT_PACKAGES_DEBUG_ASAN := false
