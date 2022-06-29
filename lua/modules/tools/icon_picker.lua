local icon_picker = require("icon-picker")

local opts = { noremap = true, silent = true }

vim.keymap.set("i", "<A-i>", "<cmd>PickIconsInsert<cr>", opts)
vim.keymap.set("n", "<Leader>ie", "<cmd>PickIcons<cr>", opts)
