-- vimtex
vim.opt_local.conceallevel = 2

vim.cmd([[
packadd vim-latex-live-preview
" LLPStartPreview
]])

-- preview option
-- this option not support local
vim.opt_local.updatetime = 1000

-- add executable check for evince or okular pdf preview binary
vim.keymap.set("n", "<space>lt", "<cmd>LLPStartPreview<cr>", {
  buffer = true,
  silent = true,
  desc = "preview tex",
})
