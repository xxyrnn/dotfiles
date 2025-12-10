-- trouble for diagnostics
-- https://github.com/folke/trouble.nvim
return {
	"folke/trouble.nvim",
	dependencies = {
		"folke/todo-comments.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		modes = {
			test = {
				mode = "diagnostics",
				preview = {
					type = "split",
					relative = "win",
					position = "right",
					size = 0.3,
				},
			},
			diagnostics_buffer = {
				mode = "diagnostics",
				filter = { buf = 0 },
			},
		},
	},
	cmd = "Trouble",
}
