-- oasis theme
-- https://github.com/uhs-robert/oasis.nvim
return {
  "uhs-robert/oasis.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("oasis").setup()
    -- vim.cmd.colorscheme "oasis-starlight"
  end,
}
