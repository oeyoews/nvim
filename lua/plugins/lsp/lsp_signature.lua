local ok, lsp_signature = pcall(require, "lsp_signature")

if not ok then
  vim.notify("lsp_signature not founded")
  return
end

lsp_signature.on_attach()
