require("persistence").setup()

vim.keymap.set("n", "<space>ql", function()
  require("persistence").load({
    last = true,
  })
end, {
  desc = " restore last session",
})
