local lspconfig = require("lspconfig")

local capabilities = require("user.capabilities")

local on_attach = function(client, bufnr)
  require("lsp-format").on_attach(client)
end

local lsp_setup = function()
  if oeyoews.options.enable_lsp then
    for _, lsp_server in pairs(oeyoews.servers) do
      lspconfig[lsp_server].setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end
  end
end

lsp_setup()

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  signs = true,
  update_in_insert = false,
  severity_sort = false,
  virtual_text = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

-- change lsp icons
local custom_icon = function()
  local signs = { Error = "", Warn = " ", Hint = "", Info = " " }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end
end

custom_icon()
