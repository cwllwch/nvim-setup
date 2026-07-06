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

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { '*.ex', '*.exs', '*.heex' },
  callback = function()
    vim.lsp.buf.format({ timeout_ms = 2000 })
  end,
})
