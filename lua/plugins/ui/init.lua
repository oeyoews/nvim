local package = 'plugins.ui/'

local moudles = {
    'bufferline',
    'windline',
    -- 'shade',
    -- 'beacon',
    'incline'
}

for _, load_module in ipairs(moudles) do
    require(package .. load_module)
end
