-- vimtex
vim.opt_local.conceallevel = 2

vim.cmd([[
packadd vim-latex-live-preview
" LLPStartPreview
]])

-- preview option
-- this option not support local
vim.opt_local.updatetime = 1000

vim.keymap.set("n", "<space>lt", "<cmd>LLPStartPreview<cr>", {
  buffer = true,
  silent = true,
  desc = "preview tex",
})
