local csl = {
  gopls = "go",
  jsonls = "npm",
  vimls = "npm",
  -- or serverName = 1,
}

for server, binary in pairs(csl) do
  oeyoews.check_servers(server, binary)
end

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.setup({
  automatic_installation = false, -- automatic_installation is confliction for ensure_installed
  ensure_installed = oeyoews.servers,
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
