local g = vim.g

local status_ok, tokyonight = pcall(require, "tokyonight")

if not status_ok then
  vim.notify("tokyonight not found")
  return
end

-- option: storm, day, night
g.tokyonight_style = "storm"

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

tokyonight.colorscheme()
