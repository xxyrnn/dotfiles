-------------------
--- plugins.lua ---
-------------------

local colors = require("modules.colors")

-- hl.config({
-- 	plugin = {
-- 		borders_plus_plus = {
-- 			add_borders = 1,
-- 			natural_rounding = true,
--
-- 			col = {
-- 				border_1 = colors.accent,
-- 			},
--
-- 			border_size_1 = 2,
-- 		},
-- 	},
-- })

hl.config({
	plugin = {
		hyprbars = {
			enabled = true,

			bar_height = 32,
			bar_color = colors.bg0,
			bar_blur = true,

			bar_title_enabled = false,
			bar_text_size = 11,
			-- bar_text_font = "JetBrainsMono Nerd Font",
			bar_text_font = "NeverMind",
			bar_text_align = "left",
			bar_buttons_alignment = "left",

			bar_padding = 10,
			bar_button_padding = 10,
			bar_precedence_over_border = true,

			col = {
				text = colors.fg,
			},

			on_double_click = "hyprctl dispatch 'hl.dsp.window.fullscreen({ mode = 1 })'",
		},
	},
})

hl.plugin.hyprbars.add_button({
	bg_color = colors.red,
	fg_color = colors.fg,
	size = 15,
	icon = "",
	action = "hyprctl dispatch 'hl.dsp.window.close()'",
})

hl.plugin.hyprbars.add_button({
	bg_color = colors.green,
	fg_color = colors.fg,
	size = 15,
	icon = "",
	action = "hyprctl dispatch 'hl.dsp.window.fullscreen({ mode = 1 })'",
})

hl.plugin.hyprbars.add_button({
	bg_color = colors.aqua,
	fg_color = colors.fg,
	size = 15,
	icon = "",
	action = "hyprctl dispatch 'hl.dsp.window.float()'",
})
