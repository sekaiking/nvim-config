-- checks if the packer.nvim directory exists. If not, it clones the repository
local packerPath = vim.fn.stdpath("data") .. "/packer.nvim"
if not vim.loop.fs_stat(packerPath) then
    vim.fn.system({
        "git",
        "clone",
        "--depth=1",
        "https://github.com/wbthomason/packer.nvim.git",
        packerPath,
    })
end
vim.opt.rtp:prepend(packerPath)


vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Auto bracket close on enter
    use 'rstacruz/vim-closer'

    -- Comment
    use(
        'numToStr/Comment.nvim'
    )

    -- Syntax Highlighting
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('HiPhish/rainbow-delimiters.nvim')
    use('brenoprata10/nvim-highlight-colors')

    -- LSP / CMP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    use {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp'
    }
    use {
        'L3MON4D3/LuaSnip',
        tag = "v2.*",
        run = "make install_jsregexp"
    }
    use {
        'saadparwaiz1/cmp_luasnip',
    }
    use ("zbirenbaum/copilot.lua")
    use ("zbirenbaum/copilot-cmp")

    -- Lua Line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- theme 
    use('folke/tokyonight.nvim')

    -- start
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
    }

    -- File Explorer
    use {
        'https://github.com/nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { 'nvim-lua/plenary.nvim'}
    }

    -- Undo tree
    use('mbbill/undotree')


    -- Skill
    -- Suggests better ways to do stuff
    use ("m4xshen/hardtime.nvim")

end)


