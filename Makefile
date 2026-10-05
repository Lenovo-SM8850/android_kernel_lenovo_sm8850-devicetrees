# SPDX-License-Identifier: GPL-2.0
vendor := $(src)

ifeq ($(CONFIG_ARCH_CANOE),y)
DTC_INCLUDE += \
	$(srctree)/../vendor/lenovo/sm8850-modules/qcom/opensource/audio-kernel/include \
	$(srctree)/../vendor/lenovo/sm8850-modules/qcom/opensource/camera-kernel \
	$(srctree)/../vendor/lenovo/sm8850-modules/qcom/opensource/synx-kernel
endif

ifneq "$(wildcard $(vendor)/qcom)" ""
	subdir-y += qcom
endif

subdir-y += lenovo

# Silence all DTC warnings by default
DTC_FLAGS += -q
