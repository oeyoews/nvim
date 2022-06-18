local M = {}

-- filetype: lua
M.lua = {
  diagnostics = {
    globals = {
      "vim",
    },
    disable = {
      "lowercase-global",
    },
  },
  --[[ workspace = {
    library = {
      -- [vim.fn.expand "$VIMRUNTIME/lua"] = true,
      [vim.fn.stdpath("config") .. "/lua"] = true,
    },
  }, ]]
}

M.json = {

}

M.settings = {
  Lua = M.lua,
  json = M.json,
}

return M
