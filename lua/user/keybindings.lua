-- @ref: core.utils.mappings
local findfiles = function()
  vim.cmd([[
 nnoremap <silent> <space>fi <cmd>find ~/.config/nvim/init.lua<cr>
 nnoremap <silent> <space>fg <cmd>find ~/.config/nvim/lua/core/utils/global.lua<cr>
 nnoremap <silent> <space>fm <cmd>find ~/.config/nvim/lua/user/modules.lua<cr>
 nnoremap <silent> <space>fk <cmd>find ~/.config/nvim/lua/user/keybindings.lua<cr>
 nnoremap <silent> <space>hd :lua print(os.date("%Y-%m-%d %H:%M:%S %A %j days "))<cr>
 nnoremap <silent> <space>pl :lua print(oeyoews.print_lsp_servers())<cr>
]] )
end

return findfiles
