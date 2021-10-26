-- fast jump
require'hop'.setup()

vim.cmd([[
nno <silent> <space>jj :HopWord<cr>
]])
