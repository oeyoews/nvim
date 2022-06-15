local ok, bufferline = pcall(require, "bufferline")

if not ok then
  return false
end

bufferline.setup {}

vim.cmd [[
  nnoremap <silent> <leader>bp :BufferLinePick<CR>
]]
