local persistence = require("persistence")

persistence.setup({ dir = vim.fn.expand(vim.fn.stdpath("data") .. "/.sessions/") })

vim.cmd([[
  nnoremap <silent> <leader>ql <cmd> lua require("persistence").load({ last = true })<cr>
]])
