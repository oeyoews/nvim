local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

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

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = border,
})
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = border,
})

vim.lsp.set_log_level("error")
