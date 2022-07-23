local persistence = require("persistence")

persistence.setup({ dir = vim.fn.expand(vim.fn.stdpath("data") .. "/.sessions/") })

vim.keymap.set("n", "<space>ql", function()
  require("persistence").load({ last = true })
end, { desc = "restore last session" })
