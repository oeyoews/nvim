local ok, lsp_installer = pcall(require, "nvim-lsp-installer")

if not ok then
  vim.notify("nvim-lsp-installer not founded")
  return false
end

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

lsp_installer.setup({
  automatic_installation = true,
  -- comment it bug: will have second notify
  ensure_installed = M.servers,
  ui = {
    icons = {
      server_installed = "🍺",
      server_pending = "🔏",
      server_uninstalled = "🌽",
    },
  },
  github = {
    -- download_url_template = "https://hub.fastgit.xyz/%s/releases/download/%s/%s",
    download_url_template = "https://github.com/%s/releases/download/%s/%s",
  },
})

return M
