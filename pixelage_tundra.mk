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
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := infinity_tundra
PRODUCT_DEVICE := tundra
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 fusion

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tundra_g-user 15 AP3A.241111.008 ee9a1f release-keys" \
    DeviceProduct=tundra_g

BUILD_FINGERPRINT := motorola/tundra_g/tundra:15/AP3A.241111.008/ee9a1f:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Device Status
INFINITY_BUILD_TYPE := OFFICIAL

# Maintainer Name
INFINITY_MAINTAINER := "Shivam_Ingale"

# Whether the package supports BLURS
TARGET_SUPPORTS_BLUR := true

# Gapps:
WITH_GAPPS := true

# Whether the compiled shipped gapps package uses Google Dialer, Messaging, Contacts:
TARGET_BUILD_GOOGLE_TELEPHONY := true

# ViMusic
TARGET_BUILD_VIMUSIC := true

# Moto Calculator
USE_MOTO_CALCULATOR := true

# UDFPS
TARGET_HAS_UDFPS := true
