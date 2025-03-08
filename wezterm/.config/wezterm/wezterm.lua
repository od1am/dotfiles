local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback({
	{
		family = "TX-02",
		weight = "Medium",
		harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	},
	{
		family = "Symbols Nerd Font Mono",
	},
})
-- config.max_fps = 144
-- config.animation_fps = 144
config.font_size = 16.00
-- config.tab_and_split_indices_are_zero_based = false
-- config.front_end = "WebGpu"
-- config.webgpu_power_preference = "HighPerformance"
-- config.automatically_reload_config = true
-- config.enable_scroll_bar = false
-- config.tab_bar_at_bottom = false
-- config.window_padding = { left = 2, right = 2, top = 2, bottom = 2 }
-- config.visual_bell = {
-- 	fade_in_function = "EaseIn",
-- 	fade_in_duration_ms = 150,
-- 	fade_out_function = "EaseOut",
-- 	fade_out_duration_ms = 150,
-- }
-- config.colors = {
-- 	visual_bell = "#202020",
-- }
-- config.audible_bell = "Disabled"
-- config.warn_about_missing_glyphs = false
-- config.mouse_bindings = {
-- 	{
-- 		event = { Up = { streak = 1, button = "Left" } },
-- 		mods = "CTRL",
-- 		action = wezterm.action.OpenLinkAtMouseCursor,
-- 	},
-- }
config.color_scheme = "Catppuccin Mocha"
-- config.window_close_confirmation = "NeverPrompt"
-- config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
-- config.show_new_tab_button_in_tab_bar = false
config.enable_wayland = false
-- config.automatically_reload_config = false
-- config.exit_behavior = "CloseOnCleanExit"
-- config.exit_behavior_messaging = "Verbose"
-- config.status_update_interval = 1000
-- config.scrollback_lines = 5000
config.adjust_window_size_when_changing_font_size = false
-- config.keys = {
-- 	{ key = "o", mods = "ALT", action = wezterm.action.ShowTabNavigator },
-- }
return config
