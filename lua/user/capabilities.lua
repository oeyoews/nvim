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

vim.cmd([[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]])
vim.cmd([[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]])

local border = {
  { "┏", "FloatBorder" },
  { "─", "FloatBorder" },
  { "┓", "FloatBorder" },
  { "│", "FloatBorder" },
  { "┛", "FloatBorder" },
  { "─", "FloatBorder" },
  { "┗", "FloatBorder" },
  { "│", "FloatBorder" },
}

-- LSP settings (for overriding per client)
-- local handlers = {
-- ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
-- ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
-- }

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = border,
})
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = border,
})

-- for null-ls bug
capabilities.offsetEncoding = { "utf-16" }
-- @ref: https://github.com/NvChad/NvChad/commit/429ce94da17d850ea022cf7bf188ec676e4c7be7

--[[ if oeyoews.nvim_version < 8 then
  capabilities.documentFormattingProvider = false
  capabilities.documentRangeFormattingProvider = false
  capabilities.document_formatting = false -- 0.7 and earlier
end ]]

capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

return capabilities
