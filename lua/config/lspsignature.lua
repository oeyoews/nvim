local ok, lsp_signature = pcall(require, "lsp_signature")

if not ok then
  return false
end

lsp_signature.on_attach()
