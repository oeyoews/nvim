-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
require('neodev').setup({
  -- add any options here, or leave empty to use the default settings
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(client, _)
  require('lsp-format').on_attach(client)
end

local lsp_config = {
  on_attach = on_attach,
  capabilities = capabilities,
}

local setup = function(server_name)
  require('lspconfig')[server_name].setup(lsp_config)
  require('modules.langs.lspsaga')
end

for _, lsp_server in pairs(oeyoews.servers) do
  setup(lsp_server)
end

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
