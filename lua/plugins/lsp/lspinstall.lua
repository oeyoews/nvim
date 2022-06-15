local ok, lsp_installer = pcall(require, "nvim-lsp-installer")

if not ok then
  vim.notify("nvim-lsp-installer not founded")
  return false
end

local lspinstall_servers = require("plugins.lsp.servers").servers

lsp_installer.setup({
  automatic_installation = true,
  -- comment it bug: will have second notify
  ensure_installed = lspinstall_servers,
  ui = {
    icons = {
      server_installed = "🍺",
      server_pending = "🔏",
      server_uninstalled = "🌽",
    },
  },
  github = {
    -- download_url_template = "https://hub.fastgit.xyz/%s/releases/download/%s/%s",
    download_url_template = "https://github.com/%s/releases/download/%s/%s",
  },
})
