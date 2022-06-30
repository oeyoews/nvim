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
    schemas = {
      -- ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*"
    },
  },
}

return M
