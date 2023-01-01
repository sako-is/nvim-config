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

    use "lewpoly/sherbet.nvim"
    use { 
      'olivercederborg/poimandres.nvim',
      config = function()
        require('poimandres').setup {
          -- leave this setup function empty for default config
          -- or refer to the configuration section
          -- for configuration options
        }
      end
    }
    use 'Yazeed1s/minimal.nvim'

    use {
        "olimorris/onedarkpro.nvim", 
        config = function()
            require("onedarkpro").setup({
                colors = {}, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
                highlights = {}, -- Override default highlight groups
                ft_highlights = {}, -- Override default highlight groups for specific filetypes
                plugins = { -- Override which plugin highlight groups are loaded
    -- See the Supported Plugins section for a list of available plugins
                },
                styles = { -- Choose from "bold,italic,underline"
                    strings = "NONE", -- Style that is applied to strings.
                    comments = "NONE", -- Style that is applied to comments
                    keywords = "NONE", -- Style that is applied to keywords
                    functions = "NONE", -- Style that is applied to functions
                    variables = "NONE", -- Style that is applied to variables
                    virtual_text = "NONE", -- Style that is applied to virtual text
                },
		options = {
      			bold = false, -- Use the colorscheme's opinionated bold styles?
      			italic = false, -- Use the colorscheme's opinionated italic styles?
      			underline = false, -- Use the colorscheme's opinionated underline styles?
      			undercurl = false, -- Use the colorscheme's opinionated undercurl styles?
      			cursorline = false, -- Use cursorline highlighting?
      			transparency = false, -- Use a transparent background?
      			terminal_colors = false, -- Use the colorscheme's colors for Neovim's :terminal?
      			window_unfocused_color = false, -- When the window is out of focus, change the normal background?
  		}
	})
	end
}
end)
