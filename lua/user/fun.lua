local M = {}

--- dependency
local get_tag = function()
  local files = {}
  local config_version_tmp = os.tmpname()
  os.execute(
    "cd ~/.config/nvim/ && git describe --tags `git rev-list --tags --max-count=1`" .. " > " .. config_version_tmp
  )
  local f = io.open(config_version_tmp)
  if not f then
    return files
  end
  local k = 1
  for line in f:lines() do
    files[k] = line
    k = k + 1
  end
  f:close()
  os.remove(config_version_tmp)
  return files
end

--- get_neovim_info
M.get_neovim_info = function()
  local total_plugins = #vim.tbl_keys(packer_plugins)
  local version = vim.version()
  local nvim_version_info = string.format("%s.%s.%s", version.major, version.minor, version.patch)
  local fmt_msg = string.format(
    [[
 #  You installed `%s` plugins by packer
 #  Your neovim version: `%s`
 #  Your personal configuation version: `%s` ]],
    total_plugins,
    nvim_version_info,
    get_tag()[1]
  )
  return vim.notify(fmt_msg, "info", {
    title = "neovim info",
    timeout = 3000,
    on_open = function(win)
      local buf = vim.api.nvim_win_get_buf(win)
      vim.api.nvim_buf_set_option(buf, "filetype", "markdown")
    end,
  })
end

--- creat_journey
M.creat_journey = function()
  local journey_path = "journey"
  local journey_dir = string.format("%s/%s/%s", vim.fn.stdpath("data"), journey_path, os.date("%Y/%m/%d"))
  vim.fn.mkdir(journey_dir, "p")
  local journey = journey_dir .. "/index.md"
  vim.cmd(([[edit %s]]):format(journey))
end

return M