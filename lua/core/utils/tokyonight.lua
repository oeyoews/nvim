-- Automatically switch between dark and light themes during day and night
-- Randomly switch themes during the day
---@param opt string require theme
local switch_theme_ai = function(opt)
  -- @bug: https://stackoverflow.com/questions/20154991/generating-uniform-random-numbers-in-lua
  math.randomseed(os.time())
  local theme = "storm"
  local hour_number = tonumber(os.date("%H"))
  local status = math.random(0, 1)
  -- default theme is storm in day
  -- toggle night theme in nighttime
  if hour_number < 8 or hour_number > 20 then
    -- if h > 8 and h < 20 then
    theme = "night"
  elseif status == 1 then
    theme = "night"
  end
  vim.g.tokyonight_style = theme
  require(opt).setup()
end

-- main
switch_theme_ai("tokyonight")
