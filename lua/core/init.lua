local config_package = 'config/'

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
