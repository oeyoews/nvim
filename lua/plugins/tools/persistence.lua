local persistence_ok, persistence = pcall(require, "persistence")

if not persistence_ok then
  vim.notify("persistence not founded")
  return false
end

persistence.setup({ dir = vim.fn.expand(vim.fn.stdpath("data") .. "/.sessions/") })

-- restore last session
vim.cmd([[ nnoremap <leader>ql <cmd> lua require("persistence").load({ last = true })<cr> ]])
