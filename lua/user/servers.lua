-- @module: servers.lua
-- @ref: modules.langs.( lspconfig.lua && lspinstall.lua )

local servers = {}

servers = {
  "clangd", -- warn: don't modify this position or table order, unless use table self sort method to solve it
  "pylsp", -- support formatting
  "jdtls",
  "gopls",
  "sumneko_lua",
  "volar",
  "rust_analyzer", -- need use rustup to install stable rust and setup toolchains
  "solargraph",
  "bashls",
  "vimls",
  "jsonls", -- need install shellcheck(it dependency some haskell package, download aur's bin is fast), if lsp not work, please check :LspLog to see more information
  "cmake",
  -- "pyright",
  "cssls",
  "yamlls",
  "html",
  "tsserver",
  "taplo",
  -- "hls",
  -- "eslint",
  -- 'golangci_lint_ls',
}

return servers

-- vim:ft=lua
