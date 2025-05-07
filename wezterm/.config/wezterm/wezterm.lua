local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font({ family = "JetBrains Mono", weight = "Medium" })
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.window_padding = { left = 5, right = 5, top = 5, bottom = 5 }
config.color_scheme = "tokyonight_moon"
config.window_close_confirmation = "NeverPrompt"
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.enable_wayland = false
config.adjust_window_size_when_changing_font_size = false
return config
