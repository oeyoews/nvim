-- it's slow very, not use it
-- @BUG version: use so % to debug,  return value counters
-- note this return is 0, is not false in lua, need receive multiple value
---[[
-- if vim.fn.executable("go env $GOROOT >> /dev/null 2>&1") == 1 then

if vim.fn.executable("go") == 1 then
  oeyoews.servers[#oeyoews.servers + 1] = "gopls"
end

if vim.fn.executable("npm") == 1 then
  oeyoews.servers[#oeyoews.servers + 1] = "jsonls"
  oeyoews.servers[#oeyoews.servers + 1] = "vimls"
end
--]]

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
