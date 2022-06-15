local M = {}

M.servers = {
    "bashls",
    -- 'cssls',
    "cmake",
    "clangd",
    -- 'diagnosticls',
    "html",
    "jsonls",
    -- need install shellcheck(it dependency some haskell package, download aur's bin is fast), if lsp not work, please check :LspLog to see more information
    "pyright",
    "gopls",
    "sumneko_lua",
    -- 'tsserver',
    --'texlab',
    -- 'golangci_lint_ls',
    -- 'yamlls',
    "vimls",
  }

return M
