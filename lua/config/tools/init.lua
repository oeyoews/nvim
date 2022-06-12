local package = 'config.tools/'

local moudles = {
  'notify',
  'telescope',
  'hop',
  'colorizer',
  'gitsigns',
  'comment',
  'indent',
  'autopairs',
  -- 'neorg',
  'whichkey',
  'todocomments',
  'persistence',
}


for _, load_module in ipairs(moudles) do
  require(package .. load_module)
end
