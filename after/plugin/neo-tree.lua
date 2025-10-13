vim.keymap.set("n", "<leader>n", "<Cmd>Neotree<CR>")

require('neo-tree').setup({
	window = {
		position = "float",
		width = 50
	}
})
