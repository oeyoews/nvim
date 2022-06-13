local status_ok, tokyonight = pcall(require, 'tokyonight')
local g = vim.g

if not status_ok then
    vim.notify('tokyonight not found')
    return false
end

-- Example config in Lua
g.tokyonight_style = "storm"
g.tokyonight_italic_functions = true
g.tokyonight_italic_variables = true
g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
g.tokyonight_hide_inactive_statusline = true

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

tokyonight.colorscheme()
