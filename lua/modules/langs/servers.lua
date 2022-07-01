-- @module: servers.lua

local M = {}

M.servers = {
  "clangd", -- warn: don't modify this position or table order, unless use table self sort method to solve it
  "bashls",
  "sumneko_lua",
  "vimls",
  "jsonls", -- need install shellcheck(it dependency some haskell package, download aur's bin is fast), if lsp not work, please check :LspLog to see more information
  "cmake",
  -- "pyright",
  "pylsp", -- support formatting
  "cssls",
  "gopls",
  "yamlls",
  "html",
  "tsserver",
  "rust_analyzer",
  -- "rls",
  -- "hls",
  -- "eslint",
  -- 'golangci_lint_ls',
}

return M

-- vim:ft=lua
