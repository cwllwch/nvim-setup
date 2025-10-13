require("cwllwch.remap")

require("catppuccin").setup()
	vim.cmd.colorscheme "catppuccin-mocha"

require('undotree').setup()

require('lualine').setup()

require('lualine').get_config()

require('mason').setup()

require("mason-lspconfig").setup()

print("hello, cwllwch")
