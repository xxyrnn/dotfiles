vim.api.nvim_create_autocmd("FileType", {
    pattern = { "*" },
    callback = function(event)
        local buf = event.buf
        local filetype = event.match
        local lang = vim.treesitter.language.get_lang(filetype)

        if not lang then
            return
        end

        pcall(vim.treesitter.start, buf, lang)
        vim.bo[buf].indentexpr = "v:lua.require('nvim-treesitter').indentexpr()"
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    end,
})
