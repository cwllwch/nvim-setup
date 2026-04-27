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

vim.keymap.set({"n", "x", "o"}, "<leader>s", function() require("flash").jump() end, {desc = "Flash"})
vim.keymap.set({"n", "x", "o"}, "<leader>S", function() require("flash").treesitter() end, {desc = "Flash Treesitter Mode"})
vim.keymap.set("o", "r", function() require("flash").remote() end, {desc = "Remote Flash"})
vim.keymap.set({"x", "o"}, "R", function() require("flash").treesitter_search() end, {desc = "Treesitter"})
vim.keymap.set({"c"}, "<c-f>", function() require("flash").toggle() end, {desc = "Toggle Flash Search"})
