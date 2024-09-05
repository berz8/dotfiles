-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font_size = 15.3
config.color_scheme = "Catppuccin Macchiato"

-- and finally, return the configuration to wezterm
return config
