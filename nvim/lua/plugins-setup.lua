-- install packer.nvim automatically
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
      end
  return false
end
local packer_bootstrap = ensure_packer()

-- reload neovim on this file save automatically
vim.cmd([[
    augroup packer_user_config
        autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

-- protective call for packer
local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use)
    -- let packer manages itself
    use("wbthomason/packer.nvim")

    -- lua functions that many plugins use
    use("nvim-lua/plenary.nvim")

    -- tmux & split window navigation
    use("christoomey/vim-tmux-navigator")
    use("szw/vim-maximizer")

    -- essential plugins
    use("tpope/vim-surround")
    use("vim-scripts/ReplaceWithRegister")

    -- commenting with gc
    use("numToStr/Comment.nvim")

    -- file explorer
    use("nvim-tree/nvim-tree.lua")

    -- icons
    use("kyazdani42/nvim-web-devicons")

    -- statusline
    use("nvim-lualine/lualine.nvim")

    -- fuzzy finding
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

    -- autocompletion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")

    -- snipperts
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("rafamadriz/friendly-snippets")

    -- config packer.nvim automatically (recommended)
    if packer_bootstrap then
        require('packer').sync()
    end
end)
