local package = 'plugins.tools'

local modules = {
  'notify',
  'telescope',
  'hop',
  'colorizer',
  'gitsigns',
  'comment',
  'indent',
  -- 'autopairs',
  'highstr',
  'neorg',
  'whichkey',
  'todocomments',
  'persistence',
  'tabout',
}

for _, load_module in ipairs(modules) do
  require(package .. "." .. load_module)
end
