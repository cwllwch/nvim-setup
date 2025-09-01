require("cwllwch.remap")

vim.o.termguicolors=true
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin-mocha"

require('undotree').setup()

require('lualine').setup()

require('lualine').get_config()

vim.lsp.config('elixirls', {
		cmd = { '/Users/bernardo.corais/elixir-ls/release/language_server.sh' }, })
vim.lsp.enable('elixirls')

print("hello, cwllwch")
