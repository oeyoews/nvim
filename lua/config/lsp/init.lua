local package = 'config.lsp/'

local moudles = {
	'lsp',
	'lspsignature',
	'treesitter',
	'lspsaga',
}

for _, load_module in ipairs(moudles) do
	require(package .. load_module)
end
