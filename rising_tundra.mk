#
# Copyright (C) 2024 Project-Infinity-X
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tundra device
$(call inherit-product, device/motorola/tundra/device.mk)

# Inherit common infinity configurations
$(call inherit-product, vendor/rising/config/common_full_phone.mk)

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := rising_tundra
PRODUCT_DEVICE := tundra
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 fusion

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tundra_g-user 15 AP3A.241111.008 ee9a1f release-keys" \
    DeviceProduct=tundra_g

BUILD_FINGERPRINT := motorola/tundra_g/tundra:15/AP3A.241111.008/ee9a1f:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080
# Build Type
RISING_BUILDTYPE := UNOFFICIAL
# Device Identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
   RISING_MAINTAINER="Shivam_Ingale" \
   RISING_CHIPSET="SD888+"
# Gapps Config
WITH_GMS := true
TARGET_GAPPS_ARCH := arm64
TARGET_CORE_GMS := true
# Maintainer
RISING_MAINTAINER := Shivam_Ingale
# UDFPS
TARGET_HAS_UDFPS := true
