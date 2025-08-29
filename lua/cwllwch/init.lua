require("cwllwch.remap")

vim.o.termguicolors=true
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin-frappe"

require('undotree').setup()

require('lualine').setup()
require('lualine').get_config()

print("hello, cwllwch")
