require("cwllwch.remap")

require("cwllwch.set")

require("cwllwch.lsp")

require("catppuccin").setup()

vim.cmd.colorscheme "catppuccin-mocha"

require('reactive').setup {
		load = {'catppuccin-frappe-cursorline', 'catppuccin-mocha-cursor'}
}

require("luasnip.loaders.from_vscode").lazy_load()

require("luasnip").filetype_extend("heex", {"html"})

require("cwllwch.snippets")

require('undotree').setup()

require('lualine').setup()

require("lualine").get_config()

require('mason').setup()

require("mason-lspconfig").setup()

require("mini.animate").setup()

require("mini.ai").setup()

require("mini.surround").setup()

require("mini.surround").setup()

print("hello, cwllwch")
