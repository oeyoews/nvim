--- switch theme ai
local switch_theme_ai = function()
  -- @bug: https://stackoverflow.com/questions/20154991/generating-uniform-random-numbers-in-lua
  math.randomseed(os.time())
  local theme = "storm"
  local h = tonumber(os.date("%H"))
  local status = math.random(0, 1)
  -- default theme is storm in day
  -- toggle night theme in nighttime
  if h < 8 or h > 20 then
    -- if h > 8 and h < 20 then
    theme = "night"
  elseif status == 1 then
    theme = "night"
  end
  vim.g.tokyonight_style = theme
  require("tokyonight").setup()
end

-- main
switch_theme_ai()
