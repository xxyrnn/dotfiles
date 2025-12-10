-- none-ls for simplified lsp usage
-- https://github.com/nvimtools/none-ls.nvim
return {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local null_ls = require "null-ls"
        local formatting = null_ls.builtins.formatting

        null_ls.setup {
            debug = false,
            sources = {
                formatting.stylua,
                formatting.prettier,
                formatting.black,
                null_ls.builtins.diagnostics.flake8,
                null_ls.builtins.completion.spell,
            },
        }
    end,
}
