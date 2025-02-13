local wezterm = require("wezterm")
local config = {}
config.font = wezterm.font("TX-02")
config.font_size = 16.00
config.color_scheme = "Catppuccin Mocha"
config.animation_fps = 120
-- config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false
config.enable_wayland = false
config.adjust_window_size_when_changing_font_size = false
return config
