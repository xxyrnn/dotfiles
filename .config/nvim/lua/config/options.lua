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

o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2

o.clipboard = "unnamedplus"

opt.whichwrap:append "<>[]hl"
o.backspace = "indent,eol,start"

o.laststatus = 3
o.showmode = false

o.splitkeep = "screen"
o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true

o.timeoutlen = 400
o.undofile = true

opt.fillchars = { eob = " " }
o.ignorecase = true
o.smartcase = true

g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
