-- @nvim_cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
capabilities.offsetEncoding = { "utf-16" }
capabilities.textDocument.completion.completionItem.snippetSupport = true

local ok, clangd_extensions = pcall(require, "clangd_extensions")

if not ok then
  vim.notify("clangd_extensions not founded")
  return
end

clangd_extensions.setup({
  server = {
    on_attach = function(client, bufnr)
      if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec(
          [[
            "" Just adding collor highlight.
            :hi LspReferenceRead cterm=bold ctermbg=red guibg=#3d3d3d
            :hi LspReferenceText cterm=bold ctermbg=red guibg=#3d3d3d
            :hi LspReferenceWrite cterm=bold ctermbg=red guibg=#3d3d3d
                augroup lsp_document_highlight
                 autocmd! * <buffer>
                 "autocmd!
                 autocmd CursorHold  <buffer> lua vim.lsp.buf.document_highlight()
                 autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()
                 autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
                 " autocmd CursorHold *.* :lua vim.lsp.diagnostic.show_line_diagnostics()
                 autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 300)
                augroup END
            ]],
          false
        )
      end
    end,
    capabilities = capabilities,
  },
  inlay_hints = {
    -- Only show inlay hints for the current line
    only_current_line = true,
  },
})
