vim.cmd("packadd vim-table-mode")
vim.cmd("packadd clipboard-image.nvim")
-- this will cause multi times tos open every md files, because it's not a lua plugin
vim.cmd([[
packadd markdown-preview.nvim
  ]])
-- because this is a function, even no require again, but this buffer keymap is still work
oeyoews.lazyload.mkdp()

-- vim.cmd([[MarkdownPreview]])
