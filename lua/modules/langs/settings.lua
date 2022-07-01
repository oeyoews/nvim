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
    hover = true,
    completion = true,
    validate = true,
    schemaStore = {
      enable = true,
      url = "https://www.schemastore.org/api/json/catalog.json",
    },
    schemas = {
      kubernetes = {
        "daemon.{yml,yaml}",
        "manager.{yml,yaml}",
        "restapi.{yml,yaml}",
        "role.{yml,yaml}",
        "role_binding.{yml,yaml}",
        "*onfigma*.{yml,yaml}",
        "*ngres*.{yml,yaml}",
        "*ecre*.{yml,yaml}",
        "*eployment*.{yml,yaml}",
        "*ervic*.{yml,yaml}",
        "kubectl-edit*.yaml",
      },
    },
  },
}

return M
