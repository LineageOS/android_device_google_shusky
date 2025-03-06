# sepolicy exclusively for husky.
BOARD_SEPOLICY_DIRS += device/google/shusky/sepolicy/husky

# unresolved SELinux error log with bug tracking
BOARD_SEPOLICY_DIRS += device/google/shusky/sepolicy/tracking_denials

BOARD_VENDOR_SEPOLICY_DIRS += hardware/google/pixel-sepolicy/vibrator/common
BOARD_VENDOR_SEPOLICY_DIRS += hardware/google/pixel-sepolicy/vibrator/cs40l26
