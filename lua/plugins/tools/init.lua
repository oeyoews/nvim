local package = 'plugins.tools/'

local moudles = {
  'notify',
  'telescope',
  'hop',
  'colorizer',
  'gitsigns',
  'comment',
  'indent',
  'autopairs',
  'highstr',
  -- 'neorg',
  'whichkey',
  'todocomments',
  'persistence',
  'tabout',
}

for _, load_module in ipairs(moudles) do
  require(package .. load_module)
end
