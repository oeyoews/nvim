require('core.plugins')
require('core.mappings')
require('core.options')

local config_package = 'plugins/'

local moudles = {
    'perfect',
    'lsp',
    'themes',
    'ui',
    'tools',
}

for _, load_module in ipairs(moudles) do
    require(config_package .. load_module)
end
