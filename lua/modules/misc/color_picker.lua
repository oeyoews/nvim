require("color-picker").setup({
  ["icons"] = { "ﱢ", " " },
})

vim.cmd([[hi FloatBorder guibg=NONE]])

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)
