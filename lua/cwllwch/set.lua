vim.api.nvim_set_hl(0, 'LineNr', { fg = "white" })
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = "gray" })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = "gray" })
vim.opt.relativenumber = true
vim.opt.nu = true
vim.o.statuscolumn = "%s %l %r"

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Cursor opts
vim.opt.guicursor="a:blinkwait100-blinkoff100-blinkon100"
vim.opt.termguicolors = true
vim.o.cursorline = true
vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
