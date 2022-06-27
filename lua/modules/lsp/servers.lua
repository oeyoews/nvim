-- TODO: add settings will cause jsonls not work
local M = {}

M.servers = {
  "clangd", -- warn: don't modify this position or table order, unless use table self sort method to solve it
  "bashls",
  "sumneko_lua",
  "vimls",
  "yamlls",
  "jsonls", -- need install shellcheck(it dependency some haskell package, download aur's bin is fast), if lsp not work, please check :LspLog to see more information
  -- "cmake",
  -- "pyright",
  -- 'cssls',
  -- "html",
  -- "gopls",
  -- 'golangci_lint_ls',
  -- "tsserver",
}

return M

-- vim:ft=lua
