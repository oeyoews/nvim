require("hop").setup()

vim.keymap.set("n", "<space>hw", "<cmd>HopWord<cr>", { desc = "hop word" })
vim.keymap.set("n", "<space>hl", "<cmd>HopLine<cr>", { desc = "hop line" })
vim.keymap.set("n", "<space>ha", "<cmd>HopAnywhere<cr>", { desc = "hop Anywhere" })
