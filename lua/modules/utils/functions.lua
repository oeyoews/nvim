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
  -- sfind find
  vim.cmd(([[find %s]]):format(load_path))
end

---
oeyoews.updateSnapshots = function()
  local path = string.format("%s/snapshots/", vim.fn.stdpath("config"))
  local rolling = "rolling.json"

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
oeyoews.creat_journey = function(ft)
  local journey_path = "journey"
  local journey_dir = string.format("%s/%s/%s", vim.fn.stdpath("data"), journey_path, os.date("%Y/%m/%d"))
  vim.fn.mkdir(journey_dir, "p")
  local journey = journey_dir .. "/index." .. ft
  vim.cmd(([[edit %s]]):format(journey))
end
