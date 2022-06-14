local package = 'plugins.tools'

local modules = {
  'notify', -- first
  'hop',
  'colorizer',
  'gitsigns',
  'comment',
  'indent',
  'autopairs',
  'highstr',
  'neorg',
  'persistence',
  'todocomments',
  'tabout',
  'telescope',
  'whichkey',
  'nvim-tree',
}

for _, load_module in ipairs(modules) do
  require(package .. '.' .. load_module)
end
