# sepolicy exclusively for husky.
BOARD_SEPOLICY_DIRS += device/google/shusky/sepolicy/husky

# unresolved SELinux error log with bug tracking
BOARD_SEPOLICY_DIRS += device/google/shusky/sepolicy/tracking_denials

BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/bcmbt/sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/gps/brcm/sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/touch/gti/ical/sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/touch/gti/predump_sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/touch/predump/sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/touch/stm/predump_sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/touch/touchinspector/sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/wireless_charger/sepolicy

BOARD_VENDOR_SEPOLICY_DIRS += hardware/google/pixel-sepolicy/powerstats
BOARD_VENDOR_SEPOLICY_DIRS += hardware/google/pixel-sepolicy/vibrator/common
BOARD_VENDOR_SEPOLICY_DIRS += hardware/google/pixel-sepolicy/vibrator/cs40l26
