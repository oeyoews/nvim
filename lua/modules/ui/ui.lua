-- Automatically switch between dark and light themes during day and night
-- Randomly switch themes during the day
-- @see modules.util.tokyonight.lua
--- only in day , have opportunity get day theme
local sta = function(conf)
  -- TODO use variables to show theme in statusline
  -- @bug: https://stackoverflow.com/questions/20154991/generating-uniform-random-numbers-in-lua 
  math.randomseed(os.time())
  local theme = 'tokyonight-storm'
  local nvim_time = tonumber(os.date('%H'))
  conf = 'tokyonight' or conf
  if oeyoews.options.toggle_theme_auto then
    if nvim_time < 8 or nvim_time > 20 then
      theme = 'tokyonight-night'
    end
  end
  -- day
  -- vim.g.tokyonight_style = theme
  vim.cmd.colorscheme(theme)
  require(conf).setup()
end

sta()

require('modules.ui.custom_ui')
