" 1. vim-pug
nnoremap <SPACE>vi <Cmd>PlugInstall<CR>
nnoremap <SPACE>vc <Cmd>PlugClean<CR>
nnoremap <SPACE>vu <Cmd>PlugUpdate<CR>

" 2. auto-pairs.vim
let g:AutoPairsFlyMode = 0

" 3. autoformat
autocmd! BufWrite *.c,*.h :Autoformat

" 4. openbrower.vim
nnoremap <SPACE>bu :OpenBrowser<SPACE>https://
nnoremap <SPACE>bs :OpenBrowserSmartSearch<SPACE>

" 5. calendar.vim
noremap <silent> <SPACE>at <cmd>Calendar -position=here<CR>

" 6. choosewin.vim
nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

" 7. suda.vim
nnoremap <SPACE>fE :SudaRead<CR>
nnoremap <SPACE>fw :SudaWrite<CR>

" 8. markdown-toc.vim
nnoremap <space>fmit :GenTocMarked<CR>

" 9. css.vim
lua << EOF
require'colorizer'.setup()
EOF

" 10. bullets.vim
let g:bullets_enabled_file_types = [
			\ 'markdown',
      \ 'text',
      \ 'scratch'
      \ ]

" 11. markdown-preview.vim
nnoremap <space>fmm :MarkdownPreviewToggle<CR>
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
let g:mkdp_filetypes = [
      \ 'markdown',
      \ 'html',
      \ 'css'
      \ ]

" 12. cursor
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
hi Cursor guifg=green guibg=green
hi Cursor2 guifg=red guibg=red
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50

" 13. vim-rooter
" silent for vim-rooter
let g:rooter_silent_chdir = 1
" disable resolve links
let g:rooter_resolve_links = 0
let g:rooter_patterns = [
      \ 'Makefile',
      \ '.git', 
      \ '^dotfiles',
      \ '>cheat',
      \ '>nvim',
      \ ]

" 14. quickrun
" TODO: have some limit for windows
nnoremap <silent> <SPACE>lr <Cmd>QuickRun<CR><C-w><C-w>G

" 15. toggleterm
nnoremap <SPACE>tt <Cmd>ToggleTerm<CR>

" 16. sniprun
noremap <SPACE>ll <Cmd>SnipRun<CR>
noremap <SPACE>lc <Cmd>SnipClose<CR>

" 17. hop.nvim
lua << EOF
require'hop'.setup()
EOF
" mappings
nnoremap <SPACE>jj <Cmd>HopWord<CR>
nnoremap <SPACE>jl <Cmd>HopLine<CR>

" 18. highlight yank
autocmd TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch",
      \ timeout=150, on_visual=true}
let g:rainbow_active = 1


" 19. surround.nvim
lua << EOF
require"surround".setup{}
EOF

" 20. indent line
lua << EOF
require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
}
EOF
let g:indent_blankline_filetype_exclude = ['help', 'startify', 'NvimTree']

" 21. tabmodetoggle
" autocmd FileType markdown TableModeToggle

" 22. lua-dev
lua << EOF

local luadev = require("lua-dev").setup({
  lspconfig = {
    cmd = {"lua-language-server"}
  },
})

local lspconfig = require('lspconfig')
lspconfig.sumneko_lua.setup(luadev)

EOF

" 23. telescope
" it doesn't work for theme and layout
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

" 24. trouble.vim
lua << EOF
  require("trouble").setup {}
EOF


" notify
lua << EOF
vim.notify = require("notify")

require("notify").setup({
  -- Animation style (see below for details)
  stages = "slide",

  -- Default timeout for notifications
  timeout = 1000,

  -- For stages that change opacity this is treated as the highlight behind the window
  background_colour = "Normal",

  -- Icons for the different levels
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
})
EOF
nnoremap <silent> <leader>so :<C-U>silent update $MYVIMRC <bar> source $MYVIMRC  <bar>
      \ call v:lua.vim.notify("Nvim config successfully reloaded!", 'info', {'title': 'nvim-config', 'timeout': 1000, 'stages': 'slide'})<cr>
