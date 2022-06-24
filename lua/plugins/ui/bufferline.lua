local bufferline = require("bufferline")

bufferline.setup({})

vim.cmd([[
  nnoremap <silent> <leader>bp :BufferLinePick<CR>
]])
