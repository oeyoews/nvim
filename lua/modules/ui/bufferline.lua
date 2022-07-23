require("bufferline").setup()

vim.keymap.set("n", "<space>bp", "<cmd>BufferLinePick<cr>", { desc = "pick tabline" })
