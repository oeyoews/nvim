vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = 'rounded',
})
-- icon note this order in last
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  -- false to save some consume
  update_in_insert = false,
  severity_sort = false,
  virtual_text = {
    spacing = 2,
    source = 'always',
    prefix = '',
  },
  float = {
    focusable = false,
    style = 'minimal',
    border = 'rounded',
    source = 'always',
    header = '',
    prefix = '',
  },
})

vim.cmd([[
  nnoremap <silent> <leader>li :LspInfo<cr>
]])
