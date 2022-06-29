local persistence = require("persistence")

persistence.setup({ dir = vim.fn.expand(vim.fn.stdpath("data") .. "/.sessions/") })

vim.cmd([[
  nnoremap <leader>ql <cmd> lua require("persistence").load({ last = true })<cr>
]])
