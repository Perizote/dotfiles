return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'rcarriga/nvim-notify'
    use 'nvim-lualine/lualine.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'windwp/nvim-ts-autotag'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'sunjon/shade.nvim'
    use 'numToStr/Comment.nvim'
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use 'norcalli/nvim-colorizer.lua'
    use 'windwp/nvim-autopairs'
    use 'lukas-reineke/indent-blankline.nvim'
    use {"akinsho/toggleterm.nvim", tag = '*'}
    use 'ggandor/lightspeed.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'tami5/lspsaga.nvim'
    use 'lewis6991/gitsigns.nvim'

    --> LSP plugins
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'onsails/lspkind-nvim'
end)
