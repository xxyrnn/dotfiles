return {
    "catgoose/nvim-colorizer.lua",
    event = "VeryLazy",
    opts = {
        lazy_load = true,
        user_default_options = {
            names = false,
            css = true,
            sass = {
                enable = true,
                parsers = { "css" },
            },
            xterm = true,
            mode = "virtualtext",
            virtualtext_inline = "before",
        },
    },
}
