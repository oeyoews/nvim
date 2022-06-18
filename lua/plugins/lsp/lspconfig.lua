-- @FileName: lspconfig.lua
-- @Description: config neovim lsp

local lspconfig_ok, lspconfig = pcall(require, "lspconfig")

if not lspconfig_ok then
  vim.notify("lspconfig not fouded")
  return
end

-- @lspformat
local lspformat_ok, lsp_format = pcall(require, "lsp-format")

if not lspformat_ok then
  vim.notify("lsp_format not founded")
  return
end

-- if this servers not installed, cmp will callback nvim-lsp-install to install them
-- fix: how to config according filetype automation install servers
-- @servers_lua
local lsp_servers = require("plugins.lsp.servers").servers

-- remove clangd, use clangd_extension to replace
table.remove(lsp_servers, 1)

-- @nvim_cmp
-- fixme: split it ???
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}
capabilities.offsetEncoding = { "utf-16" }
capabilities.documentFormattingProvider = false
capabilities.documentRangeFormattingProvider = false

capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local settings = require("plugins.lsp.settings").settings

local on_attach = function(client)
  lsp_format.on_attach(client)
end

-- For general Lsp server
-- bug: this will callback all servers to connect, and insall all need servers by no adjust filetype
for _, lsp_server in ipairs(lsp_servers) do
  -- config = vim.tbl_extend("force", config, override[lsp_server] or {})
  lspconfig[lsp_server].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    -- settings = settings,
  })
end

vim.cmd([[
  nnoremap <silent> <leader>li :LspInfo<cr>
]])

-- icon note this order in last
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  update_in_insert = false,
  severity_sort = false,
  virtual_text = {
    spacing = 2,
    source = "always",
    prefix = "",
  },
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

-- @Override sumneko_lua
-- https://github.com/ayamir/nvimdots/blob/main/lua/modules/completion/lsp.lua
lspconfig.sumneko_lua.setup({
  on_attach = on_attach,
  settings = settings,
})
