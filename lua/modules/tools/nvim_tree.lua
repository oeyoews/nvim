local nvim_tree = require("nvim-tree")

nvim_tree.setup()

vim.cmd([[
nnoremap <space>fn :NvimTreeFindFileToggle<CR>
]])
