-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Simple plugins can be specified as strings
    use 'rstacruz/vim-closer'

	use { 'SmiteshP/nvim-navic' }

	use { 'ray-x/lsp_signature.nvim' }

	use { 'hrsh7th/vim-vsnip' }

    -- Lazy loading:
    -- Load on specific commands
    -- use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

    -- Load on an autocommand event
    -- use {'andymass/vim-matchup', event = 'VimEnter'}

    -- Load on a combination of conditions: specific filetypes or commands
    -- Also run code after load (see the "config" key)
    -- use {
    --   'w0rp/ale',
    --   ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    --   cmd = 'ALEEnable',
    --   config = 'vim.cmd[[ALEEnable]]'
    -- }

    -- Plugins can have dependencies on other plugins
    -- use {
    --   'haorenW1025/completion-nvim',
    --   opt = true,
    --   requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
    -- }

    -- Plugins can also depend on rocks from luarocks.org:
    -- use {
    --   'my/supercoolplugin',
    --   rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
    -- }

    -- You can specify rocks in isolation
    -- use_rocks 'penlight'
    -- use_rocks {'lua-resty-http', 'lpeg'}

    -- -- Local plugins can be included
    -- use '~/projects/personal/hover.nvim'

    -- -- Plugins can have post-install/update hooks
    -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

    -- Post-install/update hook with neovim command
    use { 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate' }}
    use { "nvim-treesitter/playground" }

    -- Post-install/update hook with call of vimscript function with argument
    -- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

    -- Use specific branch, dependency and run lua file after load
    -- use {
    --   'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
    --   requires = {'kyazdani42/nvim-web-devicons'}
    -- }

    -- Use dependency and run lua function after load
    use {
        'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    }

    -- You can specify multiple plugins in a single call
    -- use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

    -- You can alias plugin names
    -- use {'dracula/vim', as = 'dracula'}

    -- Fun icons
    use 'nvim-tree/nvim-web-devicons'

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Colors
    use { "ellisonleao/gruvbox.nvim" }
    use { "sainnhe/gruvbox-material" }

    -- Show shortcuts
    -- Lua
    use {
        "folke/which-key.nvim",
        config = function()
        end
    }

    use { 'mbbill/undotree' }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use { "akinsho/toggleterm.nvim", tag="*" }
    use { "simrat39/rust-tools.nvim" }
    use { "ThePrimeagen/vim-be-good" }
end)
