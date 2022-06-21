local M = {}

-- filetype: lua
M.lua = {
  telemetry = {
    enable = false,
  },
  diagnostics = {
    globals = {
      "vim",
      -- "append",
    },
    disable = {
      "lowercase-global",
      "undefined-field",
    },
  },
  --[[ workspace = {
    library = {
      -- [vim.fn.expand "$VIMRUNTIME/lua"] = true,
      [vim.fn.stdpath("config") .. "/lua"] = true,
    },
  }, ]]
}

M.json = {}

M.settings = {
  Lua = M.lua,
  json = M.json,
}

return M
