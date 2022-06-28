-- only need setup() if you want to change progress bar icons
require("color-picker").setup({
  ["icons"] = { "ﱢ", " " },
  -- ["icons"] = { "ﱢ", "" },
  -- ["icons"] = { "ﮊ", "" },
  -- ["icons"] = { "", "ﰕ" },
  -- ["icons"] = { "", "" },
  -- ["icons"] = { "", "" },
})

-- if you don't want weird border background colors around the popup.
vim.cmd([[hi FloatBorder guibg=NONE]])

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)
