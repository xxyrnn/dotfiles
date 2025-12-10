-- lualine for better status bar
-- https://github.com/nvim-lualine/lualine.nvim
return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
        require("lualine").setup({
            options = {
                theme = "fluoromachine",
                fmt = string.lower,
                globalstatus = true,
                disabled_filetypes = { "neo-tree" },
            },
        })
    end,
}
