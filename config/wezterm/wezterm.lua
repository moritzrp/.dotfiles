local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Appearance
config.font = wezterm.font("Hack Nerd Font")
config.enable_tab_bar = false
config.color_scheme = "One Dark (Gogh)"

-- Misc
config.window_close_confirmation = "NeverPrompt"

return config
