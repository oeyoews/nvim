require("trouble").setup({
  mode = "document_diagnostics",
})

vim.keymap.set("n", "<space>tt", "<cmd>Trouble<cr>", {
  silent = true,
  desc = " Trouble",
})
