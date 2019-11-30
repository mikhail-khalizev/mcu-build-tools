MDF_VER ?= $(shell if test -e ${MDF_PATH}/version.txt; then cat ${MDF_PATH}/version.txt; else cd ${MDF_PATH} && git describe --always --tags --dirty; fi)
CPPFLAGS += -D MDF_VER=\"$(MDF_VER)\"

EXTRA_COMPONENT_DIRS += $(MDF_PATH)/components/
EXTRA_COMPONENT_DIRS += $(MDF_PATH)/components/third_party
# EXTRA_COMPONENT_DIRS += $(MDF_PATH)/components/third_party/esp-aliyun/components

include $(IDF_PATH)/make/project-orig.mk