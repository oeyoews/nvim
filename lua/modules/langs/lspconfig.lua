local lspconfig = require("lspconfig")

-- if this servers not installed, cmp will callback nvim-lsp-install to install them
-- fix: how to config according filetype automation install servers

-- @see servers.lua
local lsp_servers = require("user.servers")
-- @see settings.lua
local settings = require("user.settings")

local capabilities = require("user.capabilities")

local sumneko_lua_locale_adjust = function()
  if require("user.options").sumneko_lua_locale_cn then
    return "--locale=zh-cn"
  end
end

local sumneko_lua_locale = sumneko_lua_locale_adjust()

local on_attach = function(client)
  require("user.lsp_format").on_attach(client)
end

-- @ref: https://github.com/lxyoucan/nvim/blob/c84b07f078d20d175a4a3b48a73705b61997bd9f/lua/lspconf/lua.lua#L85
-- cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua", "--locale=zh-cn"},
local luadev = require("lua-dev").setup({
  -- add any options here, or leave empty to use the default settings
  lspconfig = {
    -- --locale=en-us
    cmd = { "lua-language-server", sumneko_lua_locale },
    on_attach = on_attach,
    -- capabilities = capabilities, -- ???
  },
})

local enable_lsp = require("user.options").enable_lsp

-- https://github.com/neovim/nvim-lspconfig/wiki/Multiple-language-servers-FAQ#i-see-multiple-formatting-options-and-i-want-a-single-server-to-format-how-do-i-do-this

-- For general Lsp server
-- todo: only overside single settings
-- PERF: use opt to input multiple tables cmd
if enable_lsp then
  for _, lsp_server in pairs(lsp_servers) do
    if lsp_server == "sumneko_lua" then
      lspconfig[lsp_server].setup(luadev)
    else
      lspconfig[lsp_server].setup({
        settings = settings[lsp_server],
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end
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
