-----------------
--- looks.lua ---
-----------------

local colors = require("modules.colors")

hl.config({
	general = {
		gaps_in = 2.5,
		gaps_out = 5,

		border_size = 3,

		col = {
			active_border = colors.accent,
			inactive_border = colors.grey1
		},

		resize_on_border = false,

		--- see https://wiki.hypr.land/Configuring/Tearing/ before you turn this on
		allow_tearing = false,

		layout = "scrolling"
	},

	decoration = {
		rounding = 10,
		rounding_power = 2,

		active_opacity = 0.9,
		inactive_opacity = 0.7,

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = colors.bg0,
		},

		blur = {
			enabled = true,
			size = 5,
			passes = 1,

			vibrancy = 0.5
		}
	},

	animations = {
		enabled = true
	},

	misc = {
		--- set to 0 or 1 to disable the anime mascot wallpapers
		force_default_wallpaper = 0,
		--- if true disables the random hyprland logo / anime girl background
		disable_hyprland_logo = true
	}
})
