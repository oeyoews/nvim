local ok, telescope = pcall(require, "telescope")

if not ok then
  return false
end

local actions = require('telescope.actions')

telescope.setup{
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
      theme = "ivy",
    },
    oldfiles = {
      theme = "ivy"
    },
    buffers = {
      theme = "ivy"
    },
    live_grep = {
      theme = "ivy"
    },
    colorscheme = {
      theme = "ivy"
    },
    keymaps = {
      theme = "ivy"
    },
    filetypes = {
      theme = "dropdown"
    },
    current_buffer_fuzzy_find = {
      theme = "ivy"
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
nnoremap <leader>ps <Cmd>Telescope live_grep<Cr>

" nnoremap <C-k> <cmd>lua vim.lsp.buf.signature_help() <cr>

" Border highlight groups
highlight TelescopeBorder         guifg=#bd93f9
highlight TelescopePromptBorder   guifg=#bd93f9
highlight TelescopeResultsBorder  guifg=#bd93f9
highlight TelescopePreviewBorder  guifg=#bd93f9

" Color the prompt prefix
highlight TelescopePromptPrefix   guifg=green
]]
