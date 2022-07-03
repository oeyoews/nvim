-- @module: settings.lua
-- @ref: modules.langs.lspconfig.lua

local M = {}

-- configuate sumneko settings
-- @ref: https://github.com/lxyoucan/nvim/blob/c84b07f078d20d175a4a3b48a73705b61997bd9f/lua/lspconf/lua.lua#L85
-- cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua", "--locale=zh-cn"},
M.sumneko_lua = {
  Lua = {
    diagnostics = {
      globals = { "vim" },
    },
    workspace = {
      library = {
        [vim.fn.expand("$VIMRUNTIME/lua")] = true,
        [vim.fn.stdpath("config") .. "/lua"] = true,
      },
    },
  },
}

-- NOTE: need close your ladder to connect this website
--[[ M.jsonls = {
  json = {
    schemas = require("schemastore").json.schemas(),
    validate = { enable = true },
  },
}
--]]

M.yamlls = {
  yaml = {
    format = { enable = true, singleQuote = true },
    validate = true,
    hover = true,
    completion = true,
    schemaStore = {
      enable = true,
      url = "https://www.schemastore.org/api/json/catalog.json",
    },
  },
}

return M
