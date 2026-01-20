-- none-ls for simplified lsp usage
-- https://github.com/nvimtools/none-ls.nvim
return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require "null-ls"
        local formatting = null_ls.builtins.formatting

        null_ls.setup {
            debug = false,
            sources = {
                require "none-ls.diagnostics.flake8",
                formatting.stylua,
                formatting.prettier,
                formatting.black,
                formatting.clang_format,
                null_ls.builtins.completion.spell,
            },
        }
    end,
}
