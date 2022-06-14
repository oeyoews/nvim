local package = 'plugins.perfect/'

local modules = {
  'disable',
  'performance',
  'filetype',
}

for _, load_module in ipairs(modules) do
  require(package .. load_module)
end
