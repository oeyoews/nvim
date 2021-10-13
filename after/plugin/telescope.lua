local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    mappings = {
      n = { ["q"] = actions.close },
    },
    prompt_prefix = "   ",
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
    }
  },
  extensions = {}
}

vim.cmd [[
nnoremap <leader>ff <cmd>Telescope find_files <cr>
nnoremap <leader>fr <cmd>Telescope oldfiles <cr>
nnoremap <leader>bb <cmd>Telescope buffers <cr> 
nnoremap <leader>tt <Cmd>Telescope colorscheme <Cr>
]]
