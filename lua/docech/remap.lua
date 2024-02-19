vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({"n","v"}, "<Space>", "<Nop>", {silent=true})

-- Go to explorer
vim.keymap.set("n", "<leader>ge", vim.cmd.Ex, { desc = "[G]o to [E]xplorer" })

-- Move line/block of code DOWN/UP
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Remove line under and keep cursor position
vim.keymap.set("n", "J", "mzJ`z")

-- Quick block movement DOWN/UP
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Diagnostics
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
