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
  local theme = "storm"
  local nvim_time = tonumber(os.date("%H"))
  conf = "tokyonight" or conf
  if oeyoews.options.toggle_theme_auto then
    if nvim_time < 8 or nvim_time > 20 then
      theme = "night"
    end
  end
  vim.g.tokyonight_style = theme
  require(conf).setup()
end

--- find
---@param file_path string
oeyoews.find_lua_file = function(file_path)
  local prefix = vim.fn.stdpath("config")
  local load_path = string.format("%s/%s.lua", prefix, file_path)
  vim.cmd(([[find %s]]):format(load_path))
end
