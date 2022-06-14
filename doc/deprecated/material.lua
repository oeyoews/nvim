vim.cmd([[
let g:material_style = "palenight"
colorscheme material
" nnoremap <space>th  <cmd>lua require('material.functions').toggle_style()<cr>
]])

-- disable tilde
require('material.functions').toggle_eob()

vim.api.nvim_set_keymap(
  'n',
  '<leader>mm',
  [[<Cmd>lua require('material.functions').toggle_style()<CR>]],
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<leader>me',
  [[<Cmd>lua require('material.functions').toggle_eob()<CR>]],
  { noremap = true, silent = true }
)
