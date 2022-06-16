-- Description: install lsp servers

local M = {}

M.servers = {
  "clangd", -- WARN: don't modify this position or table order, unless use table self sort method to solve it
  "bashls",
  -- 'cssls',
  "cmake",
  -- 'diagnosticls',
  "html",
  "jsonls",
  -- need install shellcheck(it dependency some haskell package, download aur's bin is fast), if lsp not work, please check :LspLog to see more information
  "pyright",
  "gopls",
  "sumneko_lua",
  "tsserver",
  --'texlab',
  -- 'golangci_lint_ls',
  'yamlls',
  "vimls",
}

return M

-- vim:cc=80:ft=lua
