return {
    {
        "tpope/vim-fugitive"
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()

            vim.keymap.set("n", "gvh", ":Gitsigns preview_hunk<CR>", {})
            vim.keymap.set("n", "gph", ":Gitsigns prev_hunk<CR>", {})
            vim.keymap.set("n", "gnh", ":Gitsigns next_hunk<CR>", {})
        end
    }
}
