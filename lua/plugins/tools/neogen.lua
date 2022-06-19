---@module "neogen"
---@author
---@license

local ok, neogen = pcall(require, "neogen")

if not ok then
  vim.notify('neogen not founded')
  return
end

neogen.setup({

})

vim.cmd([[
  nnoremap <silent> <space>nf :Neogen file<cr>
]])
