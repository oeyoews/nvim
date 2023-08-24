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
  if server_name == 'lua_ls' then
    require('neodev').setup({})
  end
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
