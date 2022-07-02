local telescope = require("telescope")

local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
      },
    },
    -- #   ➤   🔍
    prompt_prefix = " ",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    selection_caret = "", --  
    entry_prefix = " ",
    multi_icon = " ",
    color_devicons = true,
    use_less = true,
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.35,
        results_width = 0.80,
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

vim.cmd([[
" extensions
nnoremap <silent> <leader>tu :lua require("telescope").load_extension("ultisnips")<cr>:Telescope ultisnips<cr>
noremap <silent>  <space>tp :lua require('telescope').extensions.packer.packer()<cr>
nnoremap <silent> <space>bm :lua require('telescope').extensions.notify.notify()<cr>
" noremap <silent> <space>tP :lua require('telescope').load_extension('projects')<cr>

nnoremap <leader>ff <cmd>Telescope find_files <cr>
nnoremap <leader>to <cmd>Telescope oldfiles <cr>
nnoremap <leader>tbb <cmd>Telescope buffers <cr>
nnoremap <leader>th <Cmd>Telescope colorscheme <Cr>
nnoremap <leader>tF <Cmd>Telescope filetypes<Cr>
nnoremap <leader>tg <Cmd>Telescope git_status<Cr>
nnoremap <leader>tr <Cmd>Telescope resume<Cr>
noremap <silent> <C-P> <cmd>Telescope commands<cr>

" search string in current dir
nnoremap <leader>ts <Cmd>Telescope live_grep<Cr>

nnoremap <leader>tm <cmd>Telescope keymaps<cr>

" Border highlight groups
highlight TelescopeBorder         guifg=#bd93f9
" highlight TelescopeResultsBorder  guifg=#bd93f9
highlight TelescopePreviewBorder  guifg=#7CB740
highlight TelescopePromptBorder   guifg=#F7768E
highlight TelescopePromptPrefix   guifg=#F7768E gui=bold

]])
