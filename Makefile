TARGET = iphone:clang:9.2

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = NarwhalOpenerHandler
NarwhalOpenerHandler_FILES = NarwhalOpenerHandler.m
NarwhalOpenerHandler_INSTALL_PATH = /Library/Opener
NarwhalOpenerHandler_EXTRA_FRAMEWORKS = Opener Foundation

include $(THEOS_MAKE_PATH)/bundle.mk