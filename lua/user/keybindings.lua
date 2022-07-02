local M = {}

-- @ref: core.utils.mappings
M.findfiles = function()
  vim.cmd([[
 nnoremap <silent> <space>fi <cmd>find ~/.config/nvim/init.lua<cr>
 nnoremap <silent> <space>fp <cmd>find ~/.config/nvim/lua/user/pluginlist.lua<cr>
 nnoremap <silent> <space>fm <cmd>find ~/.config/nvim/lua/user/modules.lua<cr>
 nnoremap <silent> <space>fk <cmd>find ~/.config/nvim/lua/user/keybindings.lua<cr>
]] )
end

return M
