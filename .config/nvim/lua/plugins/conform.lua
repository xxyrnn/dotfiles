-- conform for formatting
-- https://github.com/stevearc/conform.nvim
return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "black" },
            html = { "prettier" },
            css = { "prettier" },
            json = { "prettier" },
            jsonc = { "prettier" },
            c = { "clang-format" },
        },
        format_on_save = {},
    },
}
