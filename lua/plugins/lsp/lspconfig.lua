local lspconfig_ok, lspconfig = pcall(require, "lspconfig")

if not lspconfig_ok then
  vim.notify("lspconfig not fouded")
  return
end

-- @lspformat
-- fixme: split it
local lspformat_ok, lsp_format = pcall(require, "lsp-format")

if not lspformat_ok then
  vim.notify("lsp_format not founded")
  return
end

-- if this servers not installed, cmp will callback nvim-lsp-install to install them
-- fix: how to config according filetype automation install servers
local lsp_servers = require("plugins.lsp.servers").servers

-- @nvim_cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

-- bug: this will callback all servers to connect, and insall all need servers by no adjust filetype
for _, lsp_server in ipairs(lsp_servers) do
  lspconfig[lsp_server].setup({
    -- ??
    flags = {
      debounce_text_changes = 150,
    },
    --format code
    on_attach = lsp_format.on_attach,
    -- link lsp-servers
    capabilities = capabilities,
  })
end

vim.diagnostic.config({
  virtual_text = {
    prefix = "",
  },
  signs = true,
  underline = true,
  update_in_insert = false,
})

-- icon note this order in last
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  -- false to save some consume
  update_in_insert = false,
  severity_sort = false,
  virtual_text = {
    spacing = 2,
    source = "always",
    prefix = "",
  },
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "single",
  silent = true,
  focusable = false,
  close_events = { "InsertCharPre", "CursorMoved" },
  anchor = "SW",
  relative = "cursor",
  row = -1,
})

vim.cmd([[
  nnoremap <silent> <leader>li :LspInfo<cr>
]])
