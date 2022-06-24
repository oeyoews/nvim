local hop = require("hop")

hop.setup()

vim.cmd([[
    nnoremap <leader>hw  <cmd>HopWord<CR>
    nnoremap <leader>hl <cmd>HopLine<cr>
    nnoremap <leader>ha <cmd>HopAnywhere<cr>
]])
