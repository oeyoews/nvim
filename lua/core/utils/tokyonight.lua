-- feature: toggle theme night and storm
local function switch_theme_ai()
  local h = tonumber(os.date("%H"))
  -- default theme is storm in day
  local theme = "storm"

  -- toggle night theme in nighttime
  if h < 8 and h > 20 then
    theme = "night"
  end

  vim.g.tokyonight_style = theme
  require("tokyonight").colorscheme()
end

-- main
switch_theme_ai()

-- PERF: how to change all colors after change tokyonight theme
local M = {}

function M.setup(theme)
  package.loaded["tokyonight.config"] = nil
  -- setup default value: night
  theme = theme or "night"

  vim.g.tokyonight_style = theme
  require("tokyonight").colorscheme()
end

return M
