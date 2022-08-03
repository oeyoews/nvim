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
  vim.cmd(([[find %s]]):format(load_path))
end

---
---@param rolling string
oeyoews.updateSnapshots = function(rolling)
  local path = string.format("%s/snapshots/", vim.fn.stdpath("config"))
  rolling = rolling or "rolling.json"
  -- local snap_path = path .. rolling
  -- if vim.fn.empty(vim.fn.glob(snap_path)) == 1 then
  --   os.remove(snap_path)
  -- end
  local res = vim.fn.findfile(rolling, path)
  if res:len() ~= 0 then
    os.remove(res)
  end
  -- use vim.defer or schedule
  -- TODO how to verify installed use install bootstrap?
  vim.cmd(([[PackerSnapshot %s]]):format(rolling))
  vim.cmd([[PackerSync]])
end

--- creat_journey
---@param ft string
oeyoews.creat_journey = function(ft)
  ft = ft or "txt"
  local journey_path = "journey"
  local journey_dir = string.format("%s/%s/%s", vim.fn.stdpath("data"), journey_path, os.date("%Y/%m/%d"))
  vim.fn.mkdir(journey_dir, "p")
  local journey = journey_dir .. "/index." .. ft
  vim.cmd(([[edit %s]]):format(journey))
end

oeyoews.loadpluginslist = function()
  load_plugin_list = {
    "icon-picker.nvim",
    -- "test",
  }
  table.sort(load_plugin_list)
  return table.concat(load_plugin_list, "\n")
end

require("modules.utils.usercmd")
