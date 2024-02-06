local keymap_options = { noremap = true }

vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>", keymap_options)

vim.api.nvim_set_option("clipboard", "unnamed")

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.wo.wrap = false

vim.wo.relativenumber = true

vim.opt.cursorline = true

vim.opt.ignorecase = true

vim.keymap.set("v", ">", ">gv", keymap_options)
vim.keymap.set("v", "<", "<gv", keymap_options)
