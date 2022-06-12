-- Disable some unused built-in Neovim plugins
vim.g.loaded_gzip = false
vim.g.loaded_tarPlugin = false
vim.g.loaded_zipPlugin = false
vim.g.loaded_2html_plugin = false

local present, impatient = pcall(require, 'impatient')

if present then
	impatient.enable_profile()
	-- vim.notify("impatient  founded")
else
	vim.notify('impatient not founded')
	return
end
