local header = require("header42")

header.setup({
  mail = "jyao4783@gmail.com",
})

-- add support to buffer
vim.keymap.set("n", "<space>ah", "<cmd>Stdheader<cr>", {
  silent = true,
  desc = " add header",
})
