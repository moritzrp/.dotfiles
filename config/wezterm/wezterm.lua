local wezterm = require("wezterm")
local config = {}
local launch_menu = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.launch_menu = launch_menu

-- Appearance
config.font = wezterm.font("Hack Nerd Font")
config.enable_tab_bar = false
config.color_scheme = "One Dark (Gogh)"

-- Misc
config.window_close_confirmation = "NeverPrompt"

return config
