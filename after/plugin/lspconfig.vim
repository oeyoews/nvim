if !exists('g:lspconfig')
  finish
endif

lua << EOF

 require"vim.lsp.protocol".completionitemkind = {
   "  (text)",
   "  (method)",
   "  (fun)",
   "  (constructor)",
   "ﰠ  (field)",
   " (var)",
   "ﴯ  (class)",
   "  (interface)",
   "  (module)",
   "ﰠ  (property)",
   "塞 (unit)",
   "  (value)",
   "  (enum)",
   "  (keyword)",
   "  (snippet)",
   "  (color)",
   "  (file)",
   "  (reference)",
   "  (folder)",
   "  (enum-member)",
   "  (constant)",
   "פּ  (struct)",
   "  (event)",
   "  (operator)",
   "   (type-param)"
 }

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  virtual_text = {
    spacing = 4,
    prefix = ''
    }
  }
)

EOF
