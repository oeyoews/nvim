local ok, ufo = pcall(require, "ufo")

if not ok then
  vim.notify('ufo not founded')
  return
end

ufo.setup({})

vim.wo.foldcolumn = '1'
vim.wo.foldlevel = 99 -- feel free to decrease the value
vim.wo.foldenable = true
