-- TODO: set prefix option
--- vim.keymap.set()
---@param kmap table
oeyoews.kmap = function(kmap)
  local keymap_set = function(tbl)
    tbl[4] = tbl[4] or "n"
    vim.keymap.set(tbl[4], tbl[1], tbl[2], { desc = tbl[3] or "description is coming", silent = true })
  end
  for _, v in ipairs(kmap) do
    keymap_set(v)
  end
end

-- Automatically switch between dark and light themes during day and night
-- Randomly switch themes during the day
-- @see modules.util.tokyonight.lua
--- only in day , have opportunity get day theme
oeyoews.sta = function(conf)
  -- TODO use variables to show theme in statusline
  -- @bug: https://stackoverflow.com/questions/20154991/generating-uniform-random-numbers-in-lua 
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
