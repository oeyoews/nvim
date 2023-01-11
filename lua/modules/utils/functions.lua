--- add kmap api
---@param kmap table encapsulation vim.keymap.set api function
oeyoews.kmap = function(kmap)
  local keymap_set = function(tbl)
    tbl[4] = tbl[4] or "n"
    vim.keymap.set(tbl[4], tbl[1], tbl[2], { desc = tbl[3] or "description is coming", silent = true })
  end
  for _, v in ipairs(kmap) do
    keymap_set(v)
  end
end

--- find lua or other filetype file
---@param file_path string
---@param ft string
oeyoews.find_lua_file = function(file_path, ft)
  ft = ft or "lua"
  local prefix = vim.fn.stdpath("config")
  local load_path = string.format("%s/%s.%s", prefix, file_path, ft)
  -- sfind find
  vim.cmd(("find %s"):format(load_path))
end

--- creat_journey
---@param ft string
oeyoews.creat_journey = function(ft)
  ft = ft or "txt"
  local journey_path = "journey"
  local journey_dir = string.format("%s/%s/%s", vim.fn.stdpath("data"), journey_path, os.date("%Y/%m/%d"))
  local prefix_index = string.format("/index-%s.", os.date("%H"))
  vim.fn.mkdir(journey_dir, "p")
  local journey = journey_dir .. prefix_index .. ft
  vim.cmd(([[edit %s]]):format(journey))
end

require("modules.utils.usercmd")
