if vim.fn.executable("npm") == 1 then
  oeyoews.mason[#oeyoews.mason + 1] = "prettier"
end

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
  -- use automatic_installation replace ensure_installed
  automatic_installation = true,
})

vim.keymap.set("n", "<space>lm", "<cmd>Mason<cr>", { desc = "𝓜  Show mason" })
