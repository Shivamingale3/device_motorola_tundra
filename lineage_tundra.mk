#
# Copyright (C) 2024 Project Matrixx
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tundra device
$(call inherit-product, device/motorola/tundra/device.mk)

# Inherit common lineage configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := lineage_tundra
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

# Matrixx Flags
MATRIXX_CHIPSET := SD 888+
MATRIXX_BATTERY := 4400mah
MATRIXX_DISPLAY := 1080 x 2440

# UDFPS
TARGET_HAS_UDFPS := true

# GAPPS
WITH_GMS := true

# Whether the compiled shipped gapps package uses Google Dialer, Messaging, Contacts:
TARGET_BUILD_GOOGLE_TELEPHONY := true

# ViMusic
TARGET_BUILD_VIMUSIC := true

# Moto Calculator
USE_MOTO_CALCULATOR := true

# UDFPS
TARGET_HAS_UDFPS := true
# Other Google Apps
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true
