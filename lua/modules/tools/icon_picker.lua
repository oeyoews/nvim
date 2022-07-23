require("icon-picker")

vim.keymap.set("i", "<A-i>", "<cmd>PickIconsInsert<cr>")
vim.keymap.set("n", "<space>ie", "<cmd>PickIcons<cr>", { desc = "insert icon" })
