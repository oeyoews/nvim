-- Automatically switch between dark and light themes during day and night
-- Randomly switch themes during the day
---@param opt string require theme
-- @see core.util.tokyonight.lua

--- only in day , have opportunity get day theme
---@param opt string theme
local M = {}
M.setup = function(conf)
  -- @bug: https://stackoverflow.com/questions/20154991/generating-uniform-random-numbers-in-lua
  math.randomseed(os.time())
  local theme = "night"
  local nvim_time = tonumber(os.date("%H"))
  local status = math.random(0, 1)
  conf = "tokyonight" or conf
  if oeyoews.options.toggle_theme_auto and nvim_time > 8 and nvim_time < 20 and status == 1 then
    theme = "storm"
  end
  vim.g.tokyonight_style = theme
  require(conf).setup()
end

return M
