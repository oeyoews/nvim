if !exists('g:loaded_telescope') | finish | endif

lua << EOF
local actions = require('telescope.actions')
require('telescope').setup{
defaults = {
  mappings = {
    n = { ["q"] = actions.close },
    },
  layout_config = {
    vertical = { width = 0.5 } -- other layout configuration here
    },
  pickers = {
    find_files = {
      theme = "dropdown",
      }
    },
  }
}
EOF

" mappings 
nnoremap <leader>ff <cmd>Telescope find_files theme=dropdown prompt_prefix=🔍<cr>
nnoremap <leader>fr <cmd>Telescope oldfiles theme=dropdown prompt_prefix=🔍<cr>
nnoremap <leader>bb <cmd>Telescope buffers theme=dropdown prompt_prefix=🔍<cr> 
