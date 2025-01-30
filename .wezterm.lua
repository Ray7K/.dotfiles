-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.scrollback_lines = 10000
config.enable_scroll_bar = false
config.max_fps = 120
config.window_padding = { top = 20, right = 25, bottom = 25, left = 25 }

config.colors = {
	foreground = "#c0caf5",
	background = "#1a1b26",
	cursor_bg = "#c0caf5",
	cursor_border = "#c0caf5",
	cursor_fg = "#1a1b26",
	selection_bg = "#283457",
	selection_fg = "#c0caf5",
	split = "#7aa2f7",
	compose_cursor = "#ff9e64",
	scrollbar_thumb = "#292e42",

	ansi = {
		"#15161e",
		"#f7768e",
		"#9ece6a",
		"#e0af68",
		"#7aa2f7",
		"#bb9af7",
		"#7dcfff",
		"#a9b1d6",
	},
	brights = {
		"#414868",
		"#ff899d",
		"#9fe044",
		"#faba4a",
		"#8db0ff",
		"#c7a9ff",
		"#a4daff",
		"#c0caf5",
	},

	tab_bar = {
		inactive_tab_edge = "#16161e",
		background = "#1a1b26",

		active_tab = {
			fg_color = "#16161e",
			bg_color = "#7aa2f7",
		},

		inactive_tab = {
			fg_color = "#545c7e",
			bg_color = "#292e42",
		},

		inactive_tab_hover = {
			fg_color = "#7aa2f7",
			bg_color = "#292e42",
			intensity = "Bold", -- Uncomment if needed
		},

		new_tab_hover = {
			fg_color = "#7aa2f7",
			bg_color = "#1a1b26",
			intensity = "Bold",
		},

		new_tab = {
			fg_color = "#7aa2f7",
			bg_color = "#1a1b26",
		},
	},
}

config.window_background_opacity = 0.97
config.macos_window_background_blur = 25
config.default_cursor_style = "SteadyBar"

config.initial_cols = 100
config.initial_rows = 30

-- Set the font
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14
config.font_rasterizer = "FreeType"
config.font_shaper = "Harfbuzz"
config.bold_brightens_ansi_colors = true
config.font_rules = {
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font("JetBrainsMono Nerd Font", { foreground = "#F7F8FF" }),
	},
}

return config
