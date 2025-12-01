vim.keymap.set("n", "<leader>n", "<Cmd>Neotree<CR>")

require('neo-tree').setup({
	window = {
		position = "float",
		width = 50
	},
	event_handlers = {
			{
					event = "neo_tree_buffer_enter",
					handler = function(arg)
							vim.cmd [[
								setlocal rnu
								]]
						end,
				}
		},
})
