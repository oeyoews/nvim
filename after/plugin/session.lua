local ok, persistence = pcall(require, "persistence")

if not ok then
  return false
end

persistence.setup({ dir = vim.fn.expand(vim.fn.stdpath("config") .. "/.sessions/") })

-- restore last session
vim.cmd [[ nnoremap <leader>ql <cmd> lua require("persistence").load({ last = true })<cr> ]]

