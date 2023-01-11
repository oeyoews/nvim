local neodev = require("neodev").setup({})

local lspconfig = require("lspconfig")

-- fix: how to config according filetype automation install servers

local capabilities = require("user.capabilities")

-- enable zh-cn for lua
--[=[ local sumneko_lua_locale_adjust = function()
  if oeyoews.options.sumneko_lua_locale_cn then
    return "--locale=zh-cn"
  end
end --]=]

-- local sumneko_lua_locale = sumneko_lua_locale_adjust()

-- on_attach: add lspformat
local on_attach = function(client)
  -- require("user.lsp_format").on_attach(client)
  require("lsp-format").on_attach(client)
end

-- @ref: https://github.com/lxyoucan/nvim/blob/c84b07f078d20d175a4a3b48a73705b61997bd9f/lua/lspconf/lua.lua#L85
-- cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua", "--locale=zh-cn"},
--[=[
local neodev = require("neodev").setup({
  -- add any options here, or leave empty to use the default settings
  lspconfig = {
    --locale=en-us
    cmd = { "lua-language-server", sumneko_lua_locale },
    on_attach = on_attach,
    -- capabilities = capabilities, -- ???
  },
}) --]=]

-- https://github.com/neovim/nvim-lspconfig/wiki/Multiple-language-servers-FAQ#i-see-multiple-formatting-options-and-i-want-a-single-server-to-format-how-do-i-do-this

-- For general Lsp server
-- todo: only overside single settings
-- https://github.com/JavaHello/nvim/blob/nvim-lsp/lua/kide/lsp/init.lua
-- PERF: use opt to input multiple tables cmd

-- use ftplugin or use autocmd, but should have an list in lspconfig support
-- load lspconfig
local lsp_setup = function()
  if oeyoews.options.enable_lsp then
    for _, lsp_server in pairs(oeyoews.servers) do
      -- TODO: split it like astronvim.lsp.handlers
      -- local opts = require("modules.langs.server_settings")
      --[=[ if lsp_server == "sumneko_lua" then
        lspconfig[lsp_server].setup(neodev)
      else --]=]
      lspconfig[lsp_server].setup(
        -- settings.lsp_server
        {
          -- settings = settings[lsp_server],
          -- handlers = handlers,
          on_attach = on_attach,
          capabilities = capabilities,
        }
      )
      -- end
      -- pcall(require, "modules.langs.server_settings.sumneko_lua")
    end
  end
end

lsp_setup()

vim.keymap.set("n", "<space>li", "<cmd>LspInfo<cr>", {
  desc = "  show lspinfo",
})

-- icon note this order in last
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  signs = true,
  update_in_insert = false,
  severity_sort = false,
  virtual_text = true,
  -- virtual_text = {
  --   spacing = 2,
  --   source = "always",
  --   prefix = "",
  -- },
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

-- still have some bug use space space eb enable
-- require("modules.langs.lspsaga")
