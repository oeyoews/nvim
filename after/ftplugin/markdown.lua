vim.cmd("packadd markdown-preview.nvim")

-- mkdp
require("user.lazyload.mkdp")

vim.cmd("packadd icon-picker.nvim")

-- icon by packadd load config
require("user.lazyload.icon_picker")

vim.cmd("packadd clipboard-image.nvim")

-- not support markdown
-- it's some mapping because this order disappear by custom config
vim.cmd("packadd vim-table-mode")
