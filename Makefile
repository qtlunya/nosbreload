include $(THEOS)/makefiles/common.mk

TOOL_NAME = nosbreload

nosbreload_FILES = main.m
nosbreload_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tool.mk
