-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
-- Packer can manage itself
		use 'wbthomason/packer.nvim'
		use 'ThePrimeagen/harpoon'
		use 'nvim-tree/nvim-web-devicons' 
		use 'mason-org/mason.nvim'
		use 'neovim/nvim-lspconfig'
		use 'nvim-treesitter/completion-treesitter' -- Only if you are using TS
		use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
		use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
		use {'L3MON4D3/LuaSnip', dependencies = {"rafamadriz/friendly-snippets"}}
		use "rafamadriz/friendly-snippets"
		use 'mason-org/mason-lspconfig.nvim'
		use 'rasulomaroff/reactive.nvim'
		use 'nvim-mini/mini.animate'
		use 'nvim-mini/mini.ai'
		use 'nvim-mini/mini.surround'
		use 'nvim-mini/mini.operators'
		use 'airblade/vim-gitgutter'

		use { 'folke/trouble.nvim', 
			requires = 'nvim-tree/nvim-web-devicons',
			config = function()
				require("trouble").setup {}
			end
		}
		use {'folke/flash.nvim',
			config = function()
				require("flash").setup {}
			end
		}

		use { "catppuccin/nvim", 
				as = "catppuccin",
				config = function()
					vim.cmd('colorscheme catppuccin-mocha')
				end
			}
		
		use { 'nvim-telescope/telescope.nvim',
			 requires = { 'nvim-lua/plenary.nvim' }
			}

		use {
			"jiaoshijie/undotree",
			requires = { "nvim-lua/plenary.nvim", },
			}

		use('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'}) 
		
		use {
			'nvim-lualine/lualine.nvim',
			requires = { 'nvim-tree/nvim-web-devicons', opt = true }
			}

		use {
				"stevearc/aerial.nvim",
				config = function()
						require("aerial").setup()
				end,
		}

		use {
			'NeogitOrg/neogit',
			requires = {
				'sindrets/diffview.nvim', 
			}
		}

		use {
			"nvim-neo-tree/neo-tree.nvim",
				branch = "v3.x",
				requires = {
					"nvim-lua/plenary.nvim",
					"MunifTanjim/nui.nvim",
				}
			}
	end)
