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
        },
        format_on_save = {},
    },
}
