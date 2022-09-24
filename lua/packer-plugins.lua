return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {'neoclide/coc.nvim', branch = 'release'}

    -- Post-install/update hook with neovim command
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- code completion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    -- end of code completion

    use {"ellisonleao/glow.nvim"} -- markdown
    use 'jghauser/follow-md-links.nvim' -- md

    -- use 'feline-nvim/feline.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'Mofiqul/adwaita.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
      -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { 'jghauser/mkdir.nvim' }

    use({
        'noib3/nvim-cokeline',
        requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
        config = function()
            require('cokeline').setup()
        end
    })

    use 'majutsushi/tagbar'

    use {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = { 
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      }
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    } -- gcc and gbc

    use {'Abstract-IDE/penvim'}

    use {
        'rmagatti/auto-session',
        config = function()
          require("auto-session").setup {
            log_level = "error",
            auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
          }
        end
      }

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
end)