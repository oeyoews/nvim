-- @module: settings.lua

local M = {}

-- configuate sumneko settings
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
M.jsonls = {
  json = {
    schemas = require("schemastore").json.schemas(),
    validate = { enable = true },
  },
}

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
