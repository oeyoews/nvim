local ok, icon_picker = pcall(require, "icon-picker")

if not ok then
  vim.notify('icon_picker not founded')
  return
end

local opts = { noremap = true, silent = true }

vim.keymap.set("i", "<A-i>", "<cmd>PickIconsInsert<cr>", opts)
-- vim.cmd([[ nnoremap <silent> <A ]])
vim.keymap.set("n", "<Leader>ie", "<cmd>PickIcons<cr>", opts)
