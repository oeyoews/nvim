-- Description: install lsp servers

-- TODO: add settings will cause jsonls not work
local M = {}

M.servers = {
  "clangd", -- WARN: don't modify this position or table order, unless use table self sort method to solve it
  "jsonls", -- need install shellcheck(it dependency some haskell package, download aur's bin is fast), if lsp not work, please check :LspLog to see more information
  "bashls",
  -- 'cssls',
  "cmake",
  -- 'diagnosticls',
  "html",
  "pyright",
  "gopls",
  -- 'golangci_lint_ls',
  "sumneko_lua",
  "tsserver",
  --'texlab',
  "yamlls",
  "vimls",
}

return M

-- vim:ft=lua
