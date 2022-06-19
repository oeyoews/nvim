-- @nvim_cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- ref: https://github.com/LunarVim/LunarVim/issues/2597
capabilities.offsetEncoding = { "utf-16" }
-- ref: https://github.com/nvim-lua/completion-nvim/issues/258
capabilities.textDocument.completion.completionItem.snippetSupport = true

capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local ok, clangd_extensions = pcall(require, "clangd_extensions")

if not ok then
  vim.notify("clangd_extensions not founded")
  return
end

clangd_extensions.setup({
  server = {
    on_attach = function(client, _)
      if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec(
          [[
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
