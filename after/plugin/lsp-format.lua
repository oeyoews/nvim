local ok, lspformat = pcall(require, "lsp-format")

if not ok then
  return false
end

lspformat.setup()

local nvim_lsp = require('lspconfig')
local servers = {
  'vimls',
  'jsonls',
  'yamlls',
  'clangd',
  'pyright',
  'texlab',
  'tsserver',
  'sumneko_lua',
  'zk',
  'gopls',
  'cssls',
  'bashls'
}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = require "lsp-format".on_attach,
  }
end
