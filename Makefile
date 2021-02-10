include $(THEOS)/makefiles/common.mk

ARCHS = arm64

TOOL_NAME = sbreload

sbreload_FILES = main.m
sbreload_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tool.mk
