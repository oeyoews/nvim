--- vim.keymap.set by @oeyoews
oeyoews.kmap = function(kmap)
  for _, mapping in ipairs(kmap) do
    local key, command, desc, mode = unpack(mapping)
    local options = { desc = desc, silent = true }
    vim.keymap.set(mode or 'n', key, command, options)
  end
end

--- find lua or other filetype file
---@param file_path string
---@param ft string
oeyoews.find_lua_file = function(file_path, ft)
  ft = ft or 'lua'
  local prefix = vim.fn.stdpath('config')
  local load_path = string.format('%s/%s.%s', prefix, file_path, ft)
  -- sfind find
  vim.cmd(('find %s'):format(load_path))
end

--- creat_journey
---@param ft string
oeyoews.creat_journey = function(ft)
  ft = ft or 'txt'
  local journey_path = 'journey'
  local date = os.date('%Y/%m/%d')
  local journey_dir = string.format('%s/%s/%s/', vim.fn.stdpath('data'), journey_path, date)
  vim.fn.mkdir(journey_dir, 'p')
  local index = journey_dir .. string.format('%s.%s', 'index', ft)
  local file_exist = vim.fn.filereadable(index)
  if file_exist == 0 then
    vim.notify(index)
  end
  vim.cmd(('edit %s'):format(index))
end

require('core.usercmd')
