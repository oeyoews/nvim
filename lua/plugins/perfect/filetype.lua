local ok, filetype = pcall(require, 'filetype')

if not ok then
	return false
end

filetype.setup({
	overrides = {
		complex = {
			['.service'] = 'systemd',
		},
	},
})
