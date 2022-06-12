local package = 'config.themes/'

local moudles = {
  'tokyonight',
}


for _, load_module in ipairs(moudles) do
  require(package .. load_module)
end
