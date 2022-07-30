require("icon-picker").setup({
  disable_legacy_commands = false,
})

vim.keymap.set("i", "<A-i>", "<cmd>IconPickerNormal alt_font symbols nerd_font emoji<cr>", {
  desc = "𝑷 insert icon",
})
vim.keymap.set("n", "<space>ie", "<cmd>IconPickerNormal alt_font symbols nerd_font emoji<cr>", {
  desc = "𝑷 insert icon",
})
