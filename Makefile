export THEOS_PACKAGE_INSTALL_PREFIX=/var/jb
export THEOS_PACKAGE_SCHEME=rootless

export ARCHS = arm64 arm64e
export SYSROOT = $(THEOS)/sdks/iPhoneOS16.5.sdk

ifneq ($(THEOS_PACKAGE_SCHEME), rootless)
export TARGET = iphone:clang:14.4:14.0
else
export TARGET = iphone:clang:14.4:15.0
endif

INSTALL_TARGET_PROCESSES = SpringBoard
SUBPROJECTS = Tweak Preferences

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
