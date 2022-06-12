local package = 'config/'

local moudles = {
  'notify',
  'telescope',
  'performance',
  'tokyonight',
  'hop',
  'neorg',
  'lsp',
  'lspsignature',
}


for _, load_module in ipairs(moudles) do
  require(package .. load_module)
end
