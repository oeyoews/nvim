local package = 'plugins.perfect/'

local moudles = {
    'disable-buildin',
    'performance',
    'filetype',
}

for _, load_module in ipairs(moudles) do
    require(package .. load_module)
end
