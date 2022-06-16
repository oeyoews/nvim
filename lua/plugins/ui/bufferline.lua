local ok, bufferline = pcall(require, "bufferline")

if not ok then
  vim.notify("bufferline not founded")
  return
end

bufferline.setup({})

vim.cmd([[
  nnoremap <silent> <leader>bp :BufferLinePick<CR>
]])
