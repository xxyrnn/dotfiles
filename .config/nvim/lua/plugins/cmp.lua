-- cmp for code autocompletion
-- https://github.com/hrsh7th/nvim-cmp
return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        { "hrsh7th/cmp-nvim-lsp", event = "InsertEnter" },
        { "saadparwaiz1/cmp_luasnip", event = "InsertEnter" },
        {
            "L3MON4D3/LuaSnip",
            version = "v2.*",
            event = "InsertEnter",
            dependencies = { "rafamadriz/friendly-snippets" },
        },
    },
    config = function()
        local cmp = require "cmp"

        cmp.setup {
            completion = { completeopt = "menu,menuone" },
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert {
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm {
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = true,
                },
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif require("luasnip").expand_or_jumpable() then
                        require("luasnip").expand_or_jump()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
            },
        }

        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        vim.lsp.config("stylua", { capabilities = capabilities })
        vim.lsp.enable "stylua"
        vim.lsp.config("pyright", { capabilities = capabilities })
        vim.lsp.enable "pyright"
        vim.lsp.config("clang", { capabilities = capabilities })
        vim.lsp.enable "clang"
        vim.lsp.config("html", { capabilities = capabilities })
        vim.lsp.enable "html"
        vim.lsp.config("cssls", { capabilities = capabilities })
        vim.lsp.enable "cssls"
        vim.lsp.config("eslint", { capabilities = capabilities })
        vim.lsp.enable "eslint"
    end,
}
