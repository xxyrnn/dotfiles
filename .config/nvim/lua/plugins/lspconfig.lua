return {
  -- mason as lsp package manager
  -- https://github.com/mason-org/mason.nvim
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },

  -- mason-lspconfig as bridge between mason and lspconfig
  -- https://github.com/mason-org/mason-lspconfig.nvim
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "stylua", "pyright" },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
}
