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

--- add updateSnapshots
---@param snapshot_name string
oeyoews.updateSnapshots = function(snapshot_name)
  local path = string.format("%s/snapshots/", vim.fn.stdpath("config"))
  snapshot_name = snapshot_name or "nightly.json"
  -- local snap_path = path .. rolling
  -- if vim.fn.empty(vim.fn.glob(snap_path)) == 1 then
  --   os.remove(snap_path)
  -- end

  -- TODO how to verify installed use install bootstrap?
  local len = vim.fn.input("Update nightly.json? [y/N] ")
  local packer_ans = string.lower(len) == "y"
  if packer_ans then
    local res = vim.fn.findfile(snapshot_name, path)
    if res:len() ~= 0 then
      os.remove(res)
    end
    vim.cmd(([[PackerSnapshot %s]]):format(snapshot_name))
  end
  vim.cmd([[PackerSync]])
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

--- creat_tid
-- TODO: add hightligh
---@param tid_name string
oeyoews.creat_tid = function(tid_name)
  -- add just no parameter to return
  local ft = ".tid"
  local prefix = "REPOS/TiddlyWiki5/tiddlers/neovim_created"
  local tid_path = string.format("%s/%s/", oeyoews.home, prefix)
  if vim.fn.isdirectory(tid_path) == 1 then
    local tid_full_path = tid_path .. tid_name .. ft
    vim.cmd(([[edit %s]]):format(tid_full_path))
  else
    vim.notify("THis directory is empty")
  end
end

require("modules.utils.usercmd")
