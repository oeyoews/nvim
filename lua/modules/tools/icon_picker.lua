require("icon-picker")

vim.keymap.set("i", "<A-i>", "<cmd>PickIconsInsert<cr>", { desc = "𝑷 insert icon" })
vim.keymap.set("n", "<space>ie", "<cmd>PickIcons<cr>", { desc = "𝑷 insert icon" })
