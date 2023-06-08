--- add kmap api
---@param kmap table encapsulation vim.keymap.set api function
oeyoews.kmap = function(kmap)
  for _, mapping in ipairs(kmap) do
    local mode = mapping[4] or "n"
    local options = { desc = mapping[3] or "description is coming", silent = true }
    vim.keymap.set(mode, mapping[1], mapping[2], options)
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

require("core.usercmd")
