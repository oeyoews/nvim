if !exists('g:loaded_telescope') | finish | endif

lua << EOF
local actions = require('telescope.actions')
require('telescope').setup{
defaults = {
  mappings = {
    n = { ["q"] = actions.close },
    },
  layout_config = {
    horizontal = {
      prompt_position = "top",
      preview_width = 0.55,
      results_width = 0.8,
      },
    vertical = {
      mirror = false,
      },
    width = 0.87,
    height = 0.80,
    preview_cutoff = 120,
    },
  path_display = { "absolute" },
  file_ignore_patterns = { "node_modules" },
  --   layout_config = {
    --     vertical = { width = 0.5 } -- other layout configuration here
    --     },
    prompt_prefix = "   ",
    },
pickers = {
    find_files = {
      theme = "dropdown",
      }
    },
extensions = {
  fzf = {
     fuzzy = true, -- false will only do exact matching
     override_generic_sorter = false, -- override the generic sorter
     override_file_sorter = true, -- override the file sorter
     case_mode = "smart_case", -- or "ignore_case" or "respect_case"
     -- the default case_mode is "smart_case"
  },
      media_files = {
         filetypes = { "png", "webp", "jpg", "jpeg" },
         find_cmd = "rg", -- find command (defaults to `fd`)
      },
   },
  }
EOF

" mappings 
nnoremap <leader>ff <cmd>Telescope find_files <cr>
nnoremap <leader>fr <cmd>Telescope oldfiles <cr>
nnoremap <leader>bb <cmd>Telescope buffers <cr> 
