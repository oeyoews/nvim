local package = 'plugins.ui/'

local moudles = {
  'bufferline',
  'windline',
}

for _, load_module in ipairs(moudles) do
  require(package .. load_module)
end
