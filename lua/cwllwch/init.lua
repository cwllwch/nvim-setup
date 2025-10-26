require("cwllwch.remap")

require("catppuccin").setup()
	vim.cmd.colorscheme "catppuccin-mocha"
	vim.g.terminal_color_0 = "black"

require('undotree').setup()

require('lualine').setup()

require('lualine').get_config()

require('mason').setup()

require("mason-lspconfig").setup()

print("hello, cwllwch")
