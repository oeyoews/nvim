-- mkdp
vim.cmd("packadd markdown-preview.nvim")
require("user.lazyload.mkdp")

vim.cmd("packadd clipboard-image.nvim")
-- not support markdown
-- it's some mapping because this order disappear by custom config
vim.cmd("packadd vim-table-mode")
