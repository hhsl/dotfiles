-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = 'Catppuccin Frappé (Gogh)'

config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 16
config.line_height = 1.2
config.enable_tab_bar = false
config.harfbuzz_features = { 'zero' }

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.8
config.macos_window_background_blur = 20
config.window_padding = {
  left = '3cell',
  right = '3cell',
  top = '1cell',
  bottom = '1cell',
}

-- and finally, return the configuration to wezterm
return config
