-----------------
--- looks.lua ---
-----------------

local colors = require("modules.colors")

hl.config({
	general = {
		gaps_in = 2.5,
		gaps_out = 5,

		border_size = 0,

		col = {
			active_border = colors.accent,
			inactive_border = colors.grey1,
		},

		resize_on_border = false,

		--- see https://wiki.hypr.land/Configuring/Tearing/ before you turn this on
		allow_tearing = false,

		layout = "dwindle",
	},

	decoration = {
		rounding = 0,
		rounding_power = 2,

		active_opacity = 1.0,
		inactive_opacity = 0.8,

		shadow = {
			enabled = false,
			range = 4,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},

		blur = {
			enabled = true,
			size = 5,
			passes = 1,

			vibrancy = 0.5,
		},
	},

	animations = {
		enabled = true,
	},

	misc = {
		--- set to 0 or 1 to disable the anime mascot wallpapers
		force_default_wallpaper = 0,
		--- if true disables the random hyprland logo / anime girl background
		disable_hyprland_logo = true,
	},
})
