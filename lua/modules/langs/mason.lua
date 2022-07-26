require("mason").setup()

local csl = {
  gopls = "go",
  -- use npm adjust if
  ['vim-language-server'] = "npm",
  ['json-lsp'] = "npm",
  -- or serverName = 1,
}

for server, binary in pairs(csl) do
  oeyoews.check_mason_servers(server, binary)
end

require 'mason-tool-installer'.setup {
  ensure_installed = oeyoews.mason_servers,

  -- if set to true this will check each tool for updates. If updates
  -- are available the tool will be updated.
  -- Default: false
  auto_update = false,

  -- automatically install / update on startup. If set to false nothing
  -- will happen on startup. You can use `:MasonToolsUpdate` to install
  -- tools and check for updates.
  -- Default: true
  run_on_start = true
}
