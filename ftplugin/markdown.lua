vim.cmd("packadd vim-table-mode")
vim.cmd("packadd clipboard-image.nvim")
vim.cmd("packadd markdown-preview.nvim")
-- because this is a function, even no require again, but this buffer keymap is still work
oeyoews.lazyload.mkdp()
