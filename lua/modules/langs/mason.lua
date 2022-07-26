require("mason").setup()

require("mason-tool-installer").setup({
  ensure_installed = {
    "codespell", "stylua", -- for null-ls
    "prettier", -- for formatter
  },

  auto_update = false,
})

require("mason-lspconfig").setup({
  -- ensure_installed = oeyoews.servers,
  automatic_installation = true,
})
