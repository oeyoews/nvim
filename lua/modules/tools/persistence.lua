local persistence = require("persistence")

persistence.setup({ dir = vim.fn.expand(vim.fn.stdpath("data") .. "/.sessions/") })

-- restore last session
vim.cmd([[
  nnoremap <leader>ql <cmd> lua require("persistence").load({ last = true })<cr>
]])
