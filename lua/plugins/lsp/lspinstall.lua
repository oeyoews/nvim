local ok, lsp_installer = pcall(require, "nvim-lsp-installer")

if not ok then
  vim.notify("nvim-lsp-installer not founded")
  return
end

local lspinstall_servers = require("plugins.lsp.servers").servers

lsp_installer.setup({
  automatic_installation = false, -- automatic_installation is confliction for ensure_installed
  ensure_installed = lspinstall_servers,
  ui = {
    border = "rounded", -- default to "none"
    icons = {
      server_installed = "",
      server_pending = " ",
      server_uninstalled = "ﮊ",
    },
  },
  github = {
    -- download_url_template = "https://hub.fastgit.xyz/%s/releases/download/%s/%s",
    download_url_template = "https://github.com/%s/releases/download/%s/%s",
  },
})
