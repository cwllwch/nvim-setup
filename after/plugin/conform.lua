local ok, conform = pcall(require, 'conform')
if not ok then
  return
end

conform.setup({
  formatters = {
    prettier = {
      prepend_args = { '--config', 'prettierrc.json' },
      cwd = require('conform.util').root_file({ 'prettierrc.json' }),
      require_cwd = true,
    },
  },
  formatters_by_ft = {
    javascript = { 'prettier' },
    javascriptreact = { 'prettier' },
    typescript = { 'prettier' },
    typescriptreact = { 'prettier' },
    css = { 'prettier' },
    json = { 'prettier' },
    jsonc = { 'prettier' },
  },
  format_on_save = {
    timeout_ms = 2000,
    lsp_format = 'never',
  },
})
