"colorscheme spacevim

lua << EOF
local base16 = require 'base16'
base16(base16.themes("tokyonight"), true)
EOF

" restore cursor location
autocmd! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" transparent background
hi Normal     ctermbg=NONE guibg=NONE

" cursor color
hi Cursor guifg=#86af5d guibg=#86af5d
hi Cursor2 guifg=red guibg=red
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50
