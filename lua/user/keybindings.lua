-- @ref: core.utils.mappings
local findfiles = function()
  vim.keymap.set(
    "n",
    "<space>fi",
    "<cmd>find ~/.config/nvim/init.lua<cr>",
    { desc = "edit init.lua(main) neovim config" }
  )
  vim.keymap.set(
    "n",
    "<space>fm",
    "<cmd>find ~/.config/nvim/lua/user/modules.lua<cr>",
    { desc = "edit modules config" }
  )
  vim.keymap.set(
    "n",
    "<space>fg",
    "<cmd>find ~/.config/nvim/lua/core/utils/global.lua<cr>",
    { desc = "edit global config" }
  )
  vim.keymap.set(
    "n",
    "<space>fk",
    "<cmd>find ~/.config/nvim/lua/user/keybindings.lua<cr>",
    { desc = "edit mapping config" }
  )
  vim.keymap.set("n", "<space>hd", function()
    print(os.date("%Y-%m-%d %H:%M:%S %A %j days "))
  end, { desc = "show time" })
end

return findfiles
