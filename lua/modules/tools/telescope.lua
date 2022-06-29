local telescope = require("telescope")

local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    mappings = {
      n = { ["q"] = actions.close },
    },
    -- #   ➤   🔍
    prompt_prefix = "🔍",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    selection_caret = "",
    entry_prefix = " ",
    border = {},
    color_devicons = true,
    use_less = true,
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
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
  },
})

-- extensitension
-- require("telescope").load_extension("ultisnips")

vim.cmd([[
nnoremap <silent> <leader>tu :lua require("telescope").load_extension("ultisnips")<cr>:Telescope ultisnips<cr>
]])

vim.cmd([[
nnoremap <leader>ff <cmd>Telescope find_files <cr>
nnoremap <leader>to <cmd>Telescope oldfiles <cr>
nnoremap <leader>tbb <cmd>Telescope buffers <cr>
nnoremap <leader>th <Cmd>Telescope colorscheme <Cr>
nnoremap <leader>tF <Cmd>Telescope filetypes<Cr>
nnoremap <leader>tg <Cmd>Telescope git_status<Cr>
nnoremap <leader>tr <Cmd>Telescope resume<Cr>

" search string in current dir
nnoremap <leader>ps <Cmd>Telescope live_grep<Cr>

nnoremap <leader>tm <cmd>Telescope keymaps<cr>
" nnoremap <leader>ss <cmd>Telescope current_buffer_fuzzy_find<cr>

" nnoremap <C-k> <cmd>lua vim.lsp.buf.signature_help() <cr>

" Border highlight groups
highlight TelescopeBorder         guifg=#bd93f9
highlight TelescopePromptBorder   guifg=#F7768E
highlight TelescopeResultsBorder  guifg=#bd93f9
highlight TelescopePreviewBorder  guifg=#7CB740

" Color the prompt prefix
highlight TelescopePromptPrefix   guifg=#F7768E gui=bold
]])
