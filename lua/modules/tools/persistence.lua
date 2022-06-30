local persistence = require("persistence")

persistence.setup({ dir = vim.fn.expand(vim.fn.stdpath("data") .. "/.sessions/") })

local persistence_map = {
  ["<leader>"] = {
    q = {
      name = "session",
      l = { '<cmd>lua require("persistence").load({ last = true })<cr>', "restore last session" },
    },
  },
}

local which_key = require("which-key")

which_key.register(persistence_map)
