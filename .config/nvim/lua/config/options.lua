local opt = vim.opt
local o = vim.o
local g = vim.g

o.number = true
o.numberwidth = 2
o.ruler = false

o.mouse = "a"
-- o.guicursor = ""

o.syntax = "on"
o.termguicolors = true

o.expandtab = true -- insert spaces instead of tabs
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.smartindent = true

o.clipboard = "unnamedplus" -- interface neovim with system clipboard
o.cursorline = true
o.cursorlineopt = "number"

opt.whichwrap:append "<>[]hl" -- move to previous/next line when at begin/end of line
o.backspace = "indent,eol,start"

o.laststatus = 3
o.showmode = false
o.splitkeep = "screen"

o.signcolumn = "yes"
o.splitbelow = true -- :split opens below current file
o.splitright = true -- :vsplit opens to the right of current file

o.timeoutlen = 400
o.undofile = true

opt.fillchars = { eob = " " }
o.ignorecase = true
o.smartcase = true

g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
