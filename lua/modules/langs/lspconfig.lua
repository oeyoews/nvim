local lspconfig = require("lspconfig")

-- if this servers not installed, cmp will callback nvim-lsp-install to install them
-- fix: how to config according filetype automation install servers

-- @servers.lua
local lsp_servers = require("user.servers")
-- @settings.lua
local settings = require("user.settings")

local lspformat = require("lsp-format")

-- @nvim_cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}

-- for null-ls bug
capabilities.offsetEncoding = { "utf-16" }
capabilities.documentFormattingProvider = false
capabilities.documentRangeFormattingProvider = false

capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

-- https://github.com/neovim/nvim-lspconfig/wiki/Multiple-language-servers-FAQ#i-see-multiple-formatting-options-and-i-want-a-single-server-to-format-how-do-i-do-this
local util = require("vim.lsp.util")

local formatting_callback = function(client, bufnr)
  vim.keymap.set("n", "<leader>f", function()
    local params = util.make_formatting_params({})
    client.request("textDocument/formatting", params, nil, bufnr)
  end, { buffer = bufnr })
end
---

local on_attach = function(client)
  lspformat.on_attach(client)
end

-- For general Lsp server
-- todo: only overside single settings
-- PERF: use opt to input multiple tables cmd
for _, lsp_server in pairs(lsp_servers) do
  lspconfig[lsp_server].setup({
    settings = settings[lsp_server],
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

vim.cmd([[
  nnoremap <silent> <leader>li :LspInfo<cr>
]])

-- icon note this order in last
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  update_in_insert = false,
  severity_sort = false,
  virtual_text = {
    spacing = 2,
    source = "always",
    prefix = "", -- '●', '▎', 'x'       🖍️   
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

vim.cmd([[
" hover error lint
" autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
