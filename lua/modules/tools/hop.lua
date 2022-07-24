require("hop").setup()

vim.keymap.set("n", "<space>hw", "<cmd>HopWord<cr>", { desc = "𝓗 hop word" })
vim.keymap.set("n", "<space>hl", "<cmd>HopLine<cr>", { desc = "𝓗 hop line" })
vim.keymap.set("n", "<space>ha", "<cmd>HopAnywhere<cr>", { desc = "𝓗 hop Anywhere" })
