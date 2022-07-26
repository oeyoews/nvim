require("mason").setup({
  ui = {
    icons = {
      package_installed = " ",
      package_pending = " ",
      package_uninstalled = " ",
    },
  },
})

require("mason-tool-installer").setup({
  ensure_installed = oeyoews.mason,

  auto_update = false,
})

require("mason-lspconfig").setup({
  -- ensure_installed = oeyoews.servers,
  automatic_installation = true,
})

vim.keymap.set("n", "<space>lm", "<cmd>Mason<cr>", { desc = "𝓜   Show mason" })
