local telescope_ok, telescope = pcall(require, "telescope")

if not telescope_ok then
  vim.notify("telescope not founded")
  return
end

local actions = require("telescope.actions")

local theme = "dropdown"

telescope.setup({
  defaults = {
    mappings = {
      n = { ["q"] = actions.close },
    },
    -- # 
    --  ➤ 
    prompt_prefix = "🔍 ",
    -- selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    selection_caret = " ",
    entry_prefix = " ",
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
    -- FIXME: to shorten it
    -- pickers = {
    --   find_files = {
    --     theme = theme,
    --     --preview = false,
    --   },
    --   oldfiles = {
    --     theme = theme,
    --   },
    --   buffers = {
    --     theme = theme,
    --   },
    --   live_grep = {
    --     theme = theme,
    --   },
    --   colorscheme = {
    --     theme = theme,
    --   },
    --   keymaps = {
    --     theme = theme,
    --   },
    --   filetypes = {
    --     theme = theme,
    --   },
    --   current_buffer_fuzzy_find = {
    --     theme = theme,
    --   },
    -- },
  },
})

vim.cmd([[
nnoremap <leader>ff <cmd>Telescope find_files <cr>
nnoremap <leader>to <cmd>Telescope oldfiles <cr>
nnoremap <leader>tbb <cmd>Telescope buffers <cr>
nnoremap <leader>tc <Cmd>Telescope colorscheme <Cr>

" search string in current dir
nnoremap <leader>ps <Cmd>Telescope live_grep<Cr>

nnoremap <leader>tm <cmd>Telescope keymaps<cr>
" nnoremap <leader>ss <cmd>Telescope current_buffer_fuzzy_find<cr>

" nnoremap <C-k> <cmd>lua vim.lsp.buf.signature_help() <cr>

" Border highlight groups
highlight TelescopeBorder         guifg=#bd93f9
highlight TelescopePromptBorder   guifg=#bd93f9
highlight TelescopeResultsBorder  guifg=#bd93f9
highlight TelescopePreviewBorder  guifg=#bd93f9

" Color the prompt prefix
" highlight TelescopePromptPrefix   guifg=green
]])
