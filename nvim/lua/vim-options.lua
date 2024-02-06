-- custom keymaps
local keymap_options = { noremap = true }
vim.keymap.set("i", "jk", "<Esc>", keymap_options)
vim.g.mapleader = " "

-- use system clipboard
vim.api.nvim_set_option("clipboard","unnamed")

-- tabs related
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- line number
vim.wo.relativenumber = true
