local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    mappings = {
      n = { ["q"] = actions.close },
    },
    prompt_prefix = "  ",
    -- 
    selection_caret = " ➤ ",
    entry_prefix = "  ",
  },
  pickers = {

    find_files = {
      theme = "dropdown",
    },
    oldfiles = {
      theme = "dropdown"
    },
    buffers = {
      theme = "dropdown"
    },
    live_grep = {
      theme = "dropdown"
    },
    colorscheme = {
      theme = "dropdown"
    },
    keymaps = {
      theme = "dropdown"
    },
    filetypes = {
      theme = "dropdown"
    },
    current_buffer_fuzzy_find = {
      theme = "dropdown"
    }
  },
  extensions = {}
}

vim.cmd [[
nnoremap <leader>ff <cmd>Telescope find_files <cr>
nnoremap <leader>fr <cmd>Telescope oldfiles <cr>
nnoremap <leader>bb <cmd>Telescope buffers <cr>
nnoremap <leader>bc <Cmd>Telescope colorscheme <Cr>
nnoremap <leader>bk <Cmd>Telescope keymaps<Cr>
nnoremap <leader>bh <Cmd>Telescope highlights<Cr>
nnoremap <leader>bf <Cmd>Telescope filetypes<Cr>
nnoremap <leader>ss <Cmd>Telescope current_buffer_fuzzy_find<Cr>

" Border highlight groups
highlight TelescopeBorder         guifg=#bd93f9
highlight TelescopePromptBorder   guifg=#bd93f9
highlight TelescopeResultsBorder  guifg=#bd93f9
highlight TelescopePreviewBorder  guifg=#bd93f9

" Color the prompt prefix
highlight TelescopePromptPrefix   guifg=green
]]
