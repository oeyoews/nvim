local package = 'plugins.lsp/'

local moudles = {
  'lsp',
  'null-ls',
  'lspsignature',
  'treesitter',
  'lspsaga',
  'trouble',
}

for _, load_module in ipairs(moudles) do
  require(package .. load_module)
end
