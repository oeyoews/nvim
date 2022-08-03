require("bufferline").setup()

vim.keymap.set("n", "<space>bp", "<cmd>BufferLinePick<cr>", {
  desc = "ﴳ pick tabline",
})
