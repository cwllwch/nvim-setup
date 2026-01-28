require("cwllwch.remap")

require("cwllwch.set")

require("cwllwch.lsp")

require("catppuccin").setup()

vim.cmd.colorscheme "catppuccin-mocha"

require('reactive').setup {
		load = {'catppuccin-frappe-cursorline', 'catppuccin-mocha-cursor'}
}

require('undotree').setup()

require('lualine').setup()

require('lualine').get_config()

require('mason').setup()

require("mason-lspconfig").setup()

print("hello, cwllwch")
