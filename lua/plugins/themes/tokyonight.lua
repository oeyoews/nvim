local status_ok, tokyonight = pcall(require, 'tokyonight')

if not status_ok then
    vim.notify('tokyonight not found')
    return false
end

tokyonight.colorscheme()
