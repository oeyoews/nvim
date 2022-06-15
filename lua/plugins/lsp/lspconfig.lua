vim.diagnostic.config {
  virtual_text = {
    prefix = "",
  },
  signs = true,
  underline = true,
  update_in_insert = false,
}

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
    prefix = '',
  },
})


vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "single",
  silent = true,
  focusable = false,
  close_events = { "InsertCharPre", "CursorMoved" },
  anchor = "SW",
  relative = "cursor",
  row = -1,
})

vim.cmd([[
  nnoremap <silent> <leader>li :LspInfo<cr>
]])
