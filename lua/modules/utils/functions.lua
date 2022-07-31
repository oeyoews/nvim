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

--- find
---@param file_path string
oeyoews.find_lua_file = function(file_path)
  local prefix = vim.fn.stdpath("config")
  local load_path = string.format("%s/%s.lua", prefix, file_path)
  vim.cmd(([[sfind %s]]):format(load_path))
end

oeyoews.updateSnapshots = function()
  local path = string.format("%s/snapshots/", vim.fn.stdpath("config"))
  local rolling = "rolling.json"

  local res = vim.fn.findfile(rolling, path)

  if string.len(res) ~= 0 then
    vim.cmd(([[PackerSnapshotDelete %s]]):format(res))
  end
  vim.cmd(([[PackerSnapshot %s]]):format(rolling))
end
