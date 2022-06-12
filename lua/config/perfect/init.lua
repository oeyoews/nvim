local package = 'config.perfect/'

local moudles = {
  'performance',
  'filetype',
}

for _, load_module in ipairs(moudles) do
  require(package .. load_module)
end
