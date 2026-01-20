-- bufferline for tabs
-- https://github.com/akinsho/bufferline.nvim
return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "nvim-lualine/lualine.nvim",
    },
    config = function()
        require("bufferline").setup {
            options = {
                always_show_bufferline = false,
                auto_toggle_bufferline = true,
                diagnostics = "nvim_lsp",
            },
        }
    end,
}
