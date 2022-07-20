local nvim_tree = require("nvim-tree")

nvim_tree.setup()

vim.cmd([[
nnoremap <silent> <space>fn :NvimTreeFindFileToggle<CR>
]])
