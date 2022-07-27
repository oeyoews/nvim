-- capabilities.textDocument.completion.completionItem.snippetSupport = true

local capabilities = vim.lsp.protocol.make_client_capabilities()

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

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

-- for null-ls bug
capabilities.offsetEncoding = { "utf-16" }
-- @ref: https://github.com/NvChad/NvChad/commit/429ce94da17d850ea022cf7bf188ec676e4c7be7
-- capabilities.documentFormattingProvider = false
-- capabilities.documentRangeFormattingProvider = false

capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

return capabilities
