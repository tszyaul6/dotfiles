return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',

    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup{}

        vim.keymap.set("n", "H", ":BufferLineCyclePrev<CR>", {})
        vim.keymap.set("n", "L", ":BufferLineCycleNext<CR>", {})
        vim.keymap.set("n", "g<", ":BufferLineMovePrev<CR>", {})
        vim.keymap.set("n", "g>", ":BufferLineMoveNext<CR>", {})
    end
}
