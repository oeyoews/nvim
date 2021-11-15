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
nnoremap <leader>tf <cmd>Telescope find_files <cr>
nnoremap <leader>tr <cmd>Telescope oldfiles <cr>
nnoremap <leader>tb <cmd>Telescope buffers <cr>
nnoremap <leader>tc <Cmd>Telescope colorscheme <Cr>
nnoremap <leader>ps <Cmd>Telescope live_grep<Cr>
nnoremap <leader>tk <cmd>Telescope keymaps<cr>
nnoremap <leader>tf <cmd>Telescope file_browse<cr>

" nnoremap <C-k> <cmd>lua vim.lsp.buf.signature_help() <cr>

" Border highlight groups
highlight TelescopeBorder         guifg=#bd93f9
highlight TelescopePromptBorder   guifg=#bd93f9
highlight TelescopeResultsBorder  guifg=#bd93f9
highlight TelescopePreviewBorder  guifg=#bd93f9

" Color the prompt prefix
highlight TelescopePromptPrefix   guifg=green
]]
