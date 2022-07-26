-- @ref: core.utils.mappings

--- load custom keymap setup
-- todo ref: https://github.com/NvChad/extensions/blob/main/lua/nvchad/updater/update.lua
-- vim.keymap.set("n", "<space>nu", "<cmd><cr>", { desc = "  update neovim config" })
vim.keymap.set(
  "n",
  "<space>fi",
  "<cmd>find ~/.config/nvim/init.lua<cr>",
  { desc = "ﳐ edit init.lua(main) neovim config" }
)
vim.keymap.set(
  "n",
  "<space>fk",
  "<cmd>find ~/.config/nvim/lua/user/keybindings.lua<cr>",
  { desc = " edit mapping config" }
)
vim.keymap.set("n", "<space>hd", function()
  print(os.date("%Y-%m-%d %H:%M:%S %A %j days "))
end, { desc = "愈show time" })
vim.keymap.set("n", "<space>helo", function()
  vim.notify("  Hello, Neovim", "info", { title = "welcome" })
end, { desc = " hello, neovim" })
