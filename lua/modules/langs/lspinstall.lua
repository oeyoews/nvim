local lsp_installer = require("nvim-lsp-installer")

local status = os.execute("go env $GOROOT >> /dev/null 2>&1")

-- @BUG version: use so % to debug,  return value counters
for index, value in ipairs(oeyoews.servers) do
  if value == "gopls" and not status then
    table.remove(oeyoews.servers, index)
  end
end

oeyoews.list_servers = function()
  for _, value in pairs(oeyoews.servers) do
    print(value)
  end
end

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
