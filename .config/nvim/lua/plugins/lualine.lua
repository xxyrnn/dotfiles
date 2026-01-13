-- lualine for better status bar
-- https://github.com/nvim-lualine/lualine.nvim
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    theme = "oasis",
    fmt = string.lower,
    -- globalstatus = true,
    disabled_filetypes = { "NvimTree" },
  },
}
