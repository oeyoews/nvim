local M = {}

--- dependency
local get_tag = function()
  local files = {}
  local config_version_tmp = os.tmpname()
  os.execute(
    'cd ~/.config/nvim/ && git describe --tags `git rev-list --tags --max-count=1`' .. ' > ' .. config_version_tmp
  )
  local f = io.open(config_version_tmp)
  -- check nil
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

-- get_neovim_info
M.setup = function()
  local fmt_msg = string.format(
    [[
   Your neovim version: `%s`
   Your personal configuration version: `%s` ]],
    oeyoews.nvim_full_version_info,
    get_tag()[1]
  )
  return vim.notify(fmt_msg, 'info', {
    title = 'Neovim Info',
    timeout = 3000,
    -- on_open = function(win)
    --   local buf = vim.api.nvim_win_get_buf(win)
    --   vim.api.nvim_buf_set_option(buf, "filetype", "markdown")
    -- end,
  })
end

return M
