local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_config = {
  capabilities = capabilities,
}

-- change lsp icons
local border = {
  { '┏', 'FloatBorder' },
  { '─', 'FloatBorder' },
  { '┓', 'FloatBorder' },
  { '│', 'FloatBorder' },
  { '┛', 'FloatBorder' },
  { '─', 'FloatBorder' },
  { '┗', 'FloatBorder' },
  { '│', 'FloatBorder' },
}

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = border,
})
vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = border,
})
