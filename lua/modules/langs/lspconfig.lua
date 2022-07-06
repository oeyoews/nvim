local lspconfig = require("lspconfig")

-- if this servers not installed, cmp will callback nvim-lsp-install to install them
-- fix: how to config according filetype automation install servers

-- @servers.lua
local lsp_servers = require("user.servers")
-- @settings.lua
local settings = require("user.settings")

-- @nvim_cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- @ref: https://github.com/lxyoucan/nvim/blob/c84b07f078d20d175a4a3b48a73705b61997bd9f/lua/lspconf/lua.lua#L85
-- cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua", "--locale=zh-cn"},
local luadev = require("lua-dev").setup({
  -- add any options here, or leave empty to use the default settings
  lspconfig = {
    cmd = { "lua-language-server", "--locale=zh-cn" },
  },
})

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

-- For general Lsp server
-- todo: only overside single settings
-- PERF: use opt to input multiple tables cmd
for _, lsp_server in pairs(lsp_servers) do
  if lsp_server == "sumneko_lua" then
    lspconfig[lsp_server].setup(luadev)
  else
    lspconfig[lsp_server].setup({
      settings = settings[lsp_server],
      -- on_attach = on_attach,
      capabilities = capabilities,
    })
  end
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
