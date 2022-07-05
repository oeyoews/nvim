-- Automatically switch between dark and light themes during day and night
-- Randomly switch themes during the day
---@param opt string require theme
-- @see core.util.tokyonight.lua

-- @bug: https://stackoverflow.com/questions/20154991/generating-uniform-random-numbers-in-lua
math.randomseed(os.time())
local theme = "night"
local nvim_time = tonumber(os.date("%H"))
local status = math.random(0, 1)

--- only in day , have opportunity get day theme
---@param opt string theme
local sta = function(opt)
  if nvim_time > 8 and nvim_time < 20 and status == 1 then
    theme = "storm"
  end
  vim.g.tokyonight_style = theme
  require(opt).setup()
end

return sta
