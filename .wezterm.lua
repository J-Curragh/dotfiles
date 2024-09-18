-- https://wezfurlong.org/wezterm/config/lua/config
local wezterm = require("wezterm")
local config = wezterm.config_builder()
-- local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
local wallpapers = os.getenv("WEZTERM_WALLPAPERS")

local wallpapers_path_set = wallpapers ~= nil
if wallpapers_path_set then
	wezterm.log_warn("WEZTERM_WALLPAPERS is not set. Defaulting to no wallpaper.")
end

local get_random_wallpaper = function()
	local background_images = wezterm.read_dir(wallpapers)
	local random_index = math.random(#background_images)
	return background_images[random_index]
end

-- Window Behaviour
config.window_close_confirmation = "NeverPrompt"

-- Window Appearance
config.color_scheme = "carbonfox"
config.font = wezterm.font("SF Mono")
config.font_size = 14
config.enable_scroll_bar = false
config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- Command Palette Appearance
config.command_palette_bg_color = "#000000"
config.command_palette_fg_color = "#FFF"
config.command_palette_font_size = 18
config.command_palette_rows = 10

-- Misc
config.audible_bell = "Disabled"
config.automatically_reload_config = true
config.freetype_load_target = "HorizontalLcd"

-- Wallpaper
if wallpapers_path_set then
	config.background = {
		{
			source = { File = get_random_wallpaper() },
			attachment = "Fixed",
			repeat_x = "Mirror",
			repeat_y = "Mirror",
			vertical_align = "Top",
			horizontal_align = "Left",
			hsb = { brightness = 0.05, saturation = 0.5 },
		},
	}
else
	config.background = {
		{
			source = { Color = "#000000" },
			attachment = "Fixed",
			repeat_x = "Mirror",
			repeat_y = "Mirror",
			vertical_align = "Top",
			horizontal_align = "Left",
		},
	}
end

-- bar.apply_to_config(config)
return config
