require("bufferline").setup()

vim.keymap.set("n", "<space>bp", "<cmd>BufferLinePick<cr>", {
  desc = "ﴳ pick tabline",
})

if oeyoews.options.enable_zen_mode then
  vim.cmd([[
  set laststatus=0
  " set showtabline=0
  ]])
end
