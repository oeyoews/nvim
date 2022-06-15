local package = 'plugins.lsp'

local modules = {
  'lsp',
  'null_ls',
  'lspconfig',
  'fidget',
  'lspsignature',
  'treesitter',
  'lspsaga',
  'trouble',
}

for _, load_module in ipairs(modules) do
  require(package .. '.' .. load_module)
end
