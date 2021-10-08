" 1. vim-pug
nnoremap <SPACE>vi <Cmd>PlugInstall<CR>

" 2. auto-pairs.vim
let g:AutoPairsFlyMode = 0

" 10. bullets.vim
let g:bullets_enabled_file_types = [ 'markdown' ]

" 12. bookmark
let g:bookmark_sign = '📖'
let g:bookmark_highlight_lines = 1
let g:bookmark_auto_save_file = $HOME.'/.cache/vim_bookmarks'


" 14. quickrun
nnoremap <silent> <SPACE>lr <Cmd>QuickRun<CR><C-w><C-w>G

" 17. hop.nvim
lua require'hop'.setup()
" mappings
nnoremap <SPACE>jj <Cmd>HopWord<CR>
nnoremap <SPACE>jl <Cmd>HopLine<CR>

" 25. notify
lua << EOF
vim.notify = require("notify")
vim.notify.setup({
  stages = "slide",
  timeout = 3000,
  background_colour = "Normal",
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
})
EOF

" StartupTime
command! Time StartupTime

" gitsigns
lua require('gitsigns').setup()

lua require'colorizer'.setup()
