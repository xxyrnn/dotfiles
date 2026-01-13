return {
  -- telescope to find files and patterns in files
  -- https://github.com/nvim-telescope/telescope.nvim
  {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.0",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- file icons
    },
    opts = {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown(),
        },
      },
    },
    cmd = "Telescope",
    config = function()
      require("telescope").load_extension "ui-select"
    end,
  },

  -- telescope-ui-select to see available quickfixes
  -- https://github.com/nvim-telescope/telescope-ui-select.nvim
  {
    "nvim-telescope/telescope-ui-select.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
  },
}
