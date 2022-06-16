-- @nvim_cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
capabilities.offsetEncoding = { "utf-16" }
capabilities.textDocument.completion.completionItem.snippetSupport = true


local ok, clangd_extensions = pcall(require, "clangd_extensions")

if not ok then
  vim.notify('clangd_extensions not founded')
  return
end

clangd_extensions.setup({
  server = {
    capabilities = capabilities,
  },
})
