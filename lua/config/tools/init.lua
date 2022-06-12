local package = 'config.tools/'

local moudles = {
  'notify',
  'telescope',
  'hop',
  'colorizer',
  'gitsigns',
  'neorg',
  'whichkey',
  'todocomments',
  'persistence',
}


for _, load_module in ipairs(moudles) do
  require(package .. load_module)
end
