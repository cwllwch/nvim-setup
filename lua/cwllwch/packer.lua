-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'ThePrimeagen/harpoon'
  use 'nvim-tree/nvim-web-devicons' 
  use 'neovim/nvim-lspconfig'
  use 'nvim-treesitter/completion-treesitter' -- Only if you are using TS
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp


  use(
  	{ "catppuccin/nvim", 
  		as = "catppuccin",
		config = function()
			vim.cmd('colorscheme catppuccin-frappe')
		end
	})

    use { 'nvim-telescope/telescope.nvim', tag = '0.1.8',
	   -- or                         , branch = '0.1.x',
	   requires = { {'nvim-lua/plenary.nvim'} }
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
end)
