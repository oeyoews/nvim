vim.cmd("packadd markdown-preview.nvim")

require("modules.tools.mkdp")

vim.cmd("packadd icon-picker.nvim")

require("modules.tools.icon_picker")

vim.cmd("packadd clipboard-image.nvim")

-- not support markdown
-- it's some mapping because this order disappear by custom config
vim.cmd("packadd vim-table-mode")

-- not work
vim.cmd("packadd vim-markdown-toc")
