-- indent-blankline for indent guides
-- https://github.com/lukas-reineke/indent-blankline.nvim
return {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
        scope = { enabled = false },
    },
}
