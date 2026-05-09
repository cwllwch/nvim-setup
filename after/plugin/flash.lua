require("flash").setup({
				modes = {
						search = {
								enabled = true
						},
						char = {
								jump_labels = true,
						}
				}
})

vim.keymap.set({"n", "x", "o"}, "<leader>v", function() require("flash").jump() end, {desc = "Flash"})
vim.keymap.set({"n", "x", "o"}, "<leader>V", function() require("flash").treesitter() end, {desc = "Flash Treesitter Mode"})
vim.keymap.set({"c"}, "<c-f>", function() require("flash").toggle() end, {desc = "Toggle Flash Search"})
