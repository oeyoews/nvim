local config_package = 'plugins/'

local moudles = {
    'perfect',
    'lsp',
    'themes',
    'ui',
    'tools',
}

require('core.mappings')
require('core.options')
require('core.plugins')

for _, load_module in ipairs(moudles) do
    require(config_package .. load_module)
end
