local autopairs_ok, autopairs = pcall(require, 'nvim-autopairs')

if not autopairs_ok then
	return false
end

autopairs.setup()
