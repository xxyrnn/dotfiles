local map = vim.keymap.set

-- move inline
map("i", "<C-b>", "<ESC>^i", { desc = "go to beginning of line" })
map("i", "<C-e>", "<End>", { desc = "go to end of line" })

-- switch window
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })

-- save file
map("n", "<C-s>", "<cmd>w<CR>", { desc = "save file" })
map("n", "<C-q>", "<cmd>q<CR>", { desc = "close file" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "clear highlights" })

-- comment
map("n", "<C-/>", "gcc", { desc = "toggle comment", remap = true })
map("v", "<C-/>", "gc", { desc = "toggle comment", remap = true })

-- telescope
map("n", "<C-f>", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "telescope live grep" })

-- neo-tree
map("n", "<C-n>", ":Neotree filesystem toggle reveal left<cr>", { desc = "neotree filesystem" })
map("n", "<C-g>", ":Neotree git_status toggle left<cr>", { desc = "neotree git status" })

-- lspconfig
map("n", "K", vim.lsp.buf.hover, { desc = "read documentation" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "see available quickfixes" })

-- trouble
map("n", "<C-d>", "<cmd>Trouble diagnostics toggle<cr>", { desc = "diagnostics (trouble)" })
