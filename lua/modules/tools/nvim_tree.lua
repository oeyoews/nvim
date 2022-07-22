local nvim_tree = require("nvim-tree")

nvim_tree.setup()

vim.keymap.set("n", "<space>fn", "<cmd>NvimTreeFindFileToggle<cr>", { desc = "Nvim Tree" })
