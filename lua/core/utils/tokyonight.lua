-- feature: toggle theme night and storm
local function switch_theme_ai()
  local h = tonumber(os.date("%H"))
  -- default theme is storm in day
  local theme = "storm"

  -- toggle night theme in nighttime
  if h < 8 or h > 20 then
    theme = "night"
  end

  vim.g.tokyonight_style = theme
  require("tokyonight").setup()
end

-- main
switch_theme_ai()
