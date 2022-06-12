local colorizer_ok, colorizer = pcall(require, 'colorizer')

if not colorizer_ok then
	vim.notify('colorizer not found!')
	return
end

colorizer.setup()
