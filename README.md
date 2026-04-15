(config) on windows using wezterm -> C:\Users\Legion\.wezterm.lua

```
local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.default_prog = { "nvim" }

config.font = wezterm.font("JetBrains Mono")
config.font_size = 12.0

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.80

config.default_cursor_style = "BlinkingBlock"

config.enable_tab_bar = false

config.color_scheme = "Catppuccin Mocha"

-- Padding
config.window_padding = {
	left = 4,
	right = 4,
	top = 4,
	bottom = 4,
}

config.keys = {
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
}

return config


```
