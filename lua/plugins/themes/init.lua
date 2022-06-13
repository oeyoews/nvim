local package = 'plugins.themes/'

local moudles = {
    -- 'catppuccin',
    'tokyonight',
    -- 'material',
    -- 'onedarkpro',
    'custom',
}

for _, load_module in ipairs(moudles) do
    require(package .. load_module)
end
