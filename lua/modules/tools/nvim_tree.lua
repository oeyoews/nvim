require("nvim-tree").setup()

vim.keymap.set("n", "<space>fn", "<cmd>NvimTreeFindFileToggle<cr>", { desc = "Nvim Tree" })
