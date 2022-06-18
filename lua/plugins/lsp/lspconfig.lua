-- FileName: lspconfig.lua
-- Description: config neovim lsp

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
-- @servers_lua
local lsp_servers = require("plugins.lsp.servers").servers

-- remove clangd, use clangd_extension to replace
table.remove(lsp_servers, 1)

-- @nvim_cmp
-- fixme: split it ???
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
capabilities.offsetEncoding = { "utf-16" }
capabilities.textDocument.completion.completionItem.snippetSupport = true

local settings = require("plugins.lsp.settings").settings

local on_attach = function(client)
  lsp_format.on_attach(client)
end

-- For general Lsp server
-- bug: this will callback all servers to connect, and insall all need servers by no adjust filetype
for _, lsp_server in ipairs(lsp_servers) do
  -- config = vim.tbl_extend("force", config, override[lsp_server] or {})
  lspconfig[lsp_server].setup({
    --format code
    -- on_attach = lsp_format.on_attach,
    on_attach = on_attach,
    debounce_text_changes = 150,
    -- settings = settings,
    -- link lsp-servers
    capabilities = capabilities,
  })
end

vim.cmd([[
  nnoremap <silent> <leader>li :LspInfo<cr>
]])

-- icon note this order in last
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  -- false to save some consume
  update_in_insert = false,
  severity_sort = false,
  virtual_text = {
    spacing = 2,
    source = "always",
    prefix = "🐕", -- define virtual_text icon
  },
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

-- HACK: ref: self comment to avoid double quote error :https://blog.51cto.com/u_15346415/3673795
--[=[
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "single",
  silent = true,
  focusable = false,
  close_events = { "InsertCharPre", "CursorMoved" },
  relative = "cursor",
  row = -1,
})

--]=]
