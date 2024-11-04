#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ossi device
$(call inherit-product, device/oplus/ossi/device.mk)

PRODUCT_DEVICE := ossi
PRODUCT_NAME := lineage_ossi
PRODUCT_BRAND := oplus
PRODUCT_MODEL := ossi
PRODUCT_MANUFACTURER := oplus

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ossi-user 12 SKQ1.211113.001 1670898145177 release-keys"

BUILD_FINGERPRINT := oplus/ossi/ossi:12/SKQ1.211113.001/1670898145177:user/release-keys
