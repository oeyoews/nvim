local lspconfig = require("lspconfig")

-- if this servers not installed, cmp will callback nvim-lsp-install to install them
-- fix: how to config according filetype automation install servers
-- @servers_lua
local lsp_servers = require("modules.langs.servers")

local settings = require("modules.langs.settings")

local lspformat = require("lsp-format")

-- @nvim_cmp
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

-- for null-ls bug
capabilities.offsetEncoding = { "utf-16" }
capabilities.documentFormattingProvider = false
capabilities.documentRangeFormattingProvider = false

capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local on_attach = function(client)
  lspformat.on_attach(client)
end

-- For general Lsp server
for _, lsp_server in ipairs(lsp_servers.servers) do
  if lsp_server == "sumneko_lua" then
    lspconfig[lsp_server].setup({
      on_attach = on_attach,
      capabilities = capabilities,
      settings = settings.lua,
    })
  else
    lspconfig[lsp_server].setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
  end
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
    prefix = "ﴞ ", -- '●', '▎', 'x'       🖍️   
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