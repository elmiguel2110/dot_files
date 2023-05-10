vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { 
            { 'nvim-lua/plenary.nvim'},
            { 'debugloop/telescope-undo.nvim' }
        }
	}

    -- use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('nvim-treesitter/playground')
    use ('nvim-treesitter/nvim-treesitter-refactor')

	use {
		'nvim-tree/nvim-tree.lua',
		after = 'nvim-web-devicons',
		requires = {'nvim-tree/nvim-web-devicons'},
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        brach = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lua'},

            --Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end
    }

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    }

    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
    }

    use {
        "folke/zen-mode.nvim",
    }

    use {
        "folke/twilight.nvim",
    }

    use {
        'numToStr/Comment.nvim',
    }

    use {
        "windwp/nvim-autopairs",
    }

    use {
        'rmagatti/auto-session',
    }

    use {
        'lewis6991/gitsigns.nvim',
    }

    -- use "mbbill/undotree"
    use "tpope/vim-fugitive"

    use 'folke/tokyonight.nvim'
	vim.cmd[[colorscheme tokyonight-moon]]
	--vim.cmd[[colorscheme tokyonight-night]]
	--vim.cmd[[colorscheme tokyonight-storm]]
	--vim.cmd[[colorscheme tokyonight-day]]
	use 'shaunsingh/nord.nvim'
	--vim.cmd[[colorscheme nord]]
end)
