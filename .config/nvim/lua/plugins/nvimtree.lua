-- nvim-tree for filesystem tree
-- https://github.com/nvim-tree/nvim-tree.lua
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    sort = { sorter = "case_sensitive" },
    view = { width = 30 },
    renderer = { group_empty = true },
    filters = { dotfiles = true },
  },
}
