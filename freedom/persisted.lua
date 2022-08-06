require("persisted").setup()

vim.keymap.set("n", "<space>ql", function()
  require("telescope").load_extension("persisted") -- To load the telescope extension
  require("telescope").extensions.persisted.persisted()
end, { desc = " restore last session" })
