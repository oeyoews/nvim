if not pcall(require, "persistence") then
  return
end

require("persistence").setup {
  dir = vim.fn.expand(vim.fn.stdpath("config") .. "/.sessions/"),
}

-- restore last session
vim.cmd [[ nnoremap <leader>ql <cmd> lua require("persistence").load({ last = true })<cr> ]]
