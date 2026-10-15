--------------------
--- hyprbars.lua ---
--------------------

local colors = require("modules.colors")

hl.config({
	plugin = {
		hyprbars = {
			enabled = false,

			bar_height = 40,
			bar_color = colors.bg0,
			bar_blur = true,

			-- bar_title_enabled = true,
			bar_title_enabled = false,
			bar_text_size = 18,
			bar_text_font = "NeverMind",
			bar_text_align = "center",
			bar_buttons_alignment = "left",

			bar_padding = 10,
			bar_button_padding = 10,
			bar_precedence_over_border = true,

			col = {
				text = colors.fg,
			},

			on_double_click = [[hyprctl dispatch 'hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" })']],
		},
	},
})

hl.plugin.hyprbars.add_button({
	bg_color = colors.red,
	fg_color = colors.bg2,
	size = 18,
	icon = "",
	action = "hyprctl dispatch 'hl.dsp.window.close()'",
})

hl.plugin.hyprbars.add_button({
	bg_color = colors.green,
	fg_color = colors.bg2,
	size = 18,
	icon = "",
	action = [[hyprctl dispatch 'hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" })']],
})

hl.plugin.hyprbars.add_button({
	bg_color = colors.cyan,
	fg_color = colors.bg2,
	size = 18,
	icon = "",
	action = "hyprctl dispatch 'hl.dsp.window.float()'",
})
