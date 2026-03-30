vim.lsp.config('cssls', {
		settings = {
				css = {
						lint = {
								unknownAtRules = "ignore"
						}
				}
		}
})

vim.lsp.config('expert', {
  cmd = { 'expert', '--stdio' },
  root_markers = { 'mix.exs', '.git' },
  filetypes = { 'elixir', 'eelixir', 'heex' },
})

vim.lsp.enable 'expert'
