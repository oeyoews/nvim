local package = 'plugins.themes'

local modules = {
  -- 'catppuccin',
  -- 'material',
  -- 'onedarkpro',
  'tokyonight',
  'custom',
}

for _, load_module in ipairs(modules) do
  require(package .. '.' .. load_module)
end
