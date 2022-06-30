local M = {}

-- configuate sumneko settings
M.lua = {
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

M.json = {
  json = {
    schemas = require('schemastore').json.schemas(),
    validate = { enable = true },
  },
}

return M
