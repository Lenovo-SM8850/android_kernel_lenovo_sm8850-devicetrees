# SPDX-License-Identifier: GPL-2.0-only
load(
    "//vendor/lenovo/sm8850-devicetrees:qcom/platform_map.bzl",
    _qcom_get_custom_dtbo_img_list = "get_custom_dtbo_img_list",
    _qcom_get_dtb_list = "get_dtb_list",
    _qcom_get_dtbo_list = "get_dtbo_list",
)

# Keep the legacy Canoe target mapped to Baldur while exposing both devices.
_LENOVO_PLATFORM_MAP = {
    "canoe": {
        "dtb_list": [{"name": "baldur-canoe-base.dtb"}],
        "dtbo_list": [{"name": "baldur-canoe-overlay.dtbo"}],
    },
    "baldur": {
        "dtb_list": [{"name": "baldur-canoe-base.dtb"}],
        "dtbo_list": [{"name": "baldur-canoe-overlay.dtbo"}],
    },
    "wuji": {
        "dtb_list": [{"name": "wuji-canoe-base.dtb"}],
        "dtbo_list": [{"name": "wuji-canoe-overlay.dtbo"}],
    },
}

def get_dtb_list(target, dt_overlay_supported = True):
    return _qcom_get_dtb_list(target, dt_overlay_supported, _LENOVO_PLATFORM_MAP)

def get_dtbo_list(target, dt_overlay_supported = True):
    return _qcom_get_dtbo_list(target, dt_overlay_supported, _LENOVO_PLATFORM_MAP)

def get_custom_dtbo_img_list(target, dt_overlay_supported = True):
    return _qcom_get_custom_dtbo_img_list(target, dt_overlay_supported, _LENOVO_PLATFORM_MAP)
