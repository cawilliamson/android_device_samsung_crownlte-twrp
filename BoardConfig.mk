# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a53
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Board
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SOC := exynos9810
TARGET_BOOTLOADER_BOARD_NAME := universal9810
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true
BOARD_SEPOLICY_VERS := 28.0

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072		# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 57671680	# 55M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 68149248	# 64.99M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4938792960	# 4710M
BOARD_CACHEIMAGE_PARTITION_SIZE := 524288000	# 500M
BOARD_VENDORIMAGE_PARTITION_SIZE := 707788800	# 675M
BOARD_DTBOIMAGE_PARTITION_SIZE := 0x0800000	# 8M

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/samsung/crownlte-els
TARGET_KERNEL_CONFIG := crownlte-twrp-els_defconfig
# KERNEL_TOOLCHAIN := /path/to/your/gcc/bin
# KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-gnu-

# Build Recovery & DTB
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/crownlte/mkbootimg.mk
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --board SRPRA04A002RU --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --second_offset 0x00f00000 --tags_offset 0x00000100
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos
TARGET_SPECIFIC_HEADER_PATH := device/samsung/crownlte/dtbhconfigLZMA_RAMDISK_TARGETS := recovery

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4 f2fs

# Graphical
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_DEFAULT_BRIGHTNESS := 10200
TW_MAX_BRIGHTNESS := 25500
TW_THEME := portrait_hdpi

# TWRP
RECOVERY_VARIANT := twrp
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_USE_NEW_MINADBD := true
TW_USE_TOOLBOX := true
TW_EXCLUDE_TWRPAPP := true
TW_DEVICE_VERSION := beta6
