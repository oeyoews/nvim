"colorscheme tokyonight

" nvchad themes
lua << EOF
local base16 = require 'base16'
base16(base16.themes("tokyonight"), true)
EOF

" restore cursor location
autocmd! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" transparent background
"hi Normal     guifg=#abb2bf ctermbg=NONE guibg=NONE
hi Normal     guifg=#b9c0cd ctermbg=NONE guibg=NONE
hi NormalFloat ctermbg=NONE guibg=NONE
hi IncSearch  cterm=bold ctermfg=16 ctermbg=167 gui=bold guifg=#292b2e guibg=#ce537a
hi Search     cterm=bold ctermfg=16 ctermbg=76 gui=bold guifg=#292b2e guibg=#86dc2f
hi PmenuSbar  ctermfg=28 ctermbg=233 guifg=#c269fe guibg=#303030
"hi PmenuSel   ctermfg=251 ctermbg=97 guifg=#c6c6c6 guibg=#875faf
"hi PmenuSel   ctermfg=251 ctermbg=97 gui=bold guifg=#3c3836 guibg=#83a598
hi PmenuSel    ctermfg=242 ctermbg=0 gui=bold guifg=#282c34 guibg=#73b8f1
hi PmenuThumb ctermfg=160 ctermbg=97 guifg=#e0211d guibg=#875faf
"hi Pmenu      ctermfg=0 ctermbg=13 guifg=#ebdbb2 guibg=#242a32
hi Keyword    cterm=bold ctermfg=68 gui=bold guifg=#4f97d7
hi StatusLine ctermbg=NONE guibg=NONE
" hide slidebar number
hi LineNr     ctermfg=239 guifg=#44505c
hi CursorLineNr guifg=#c269fe
"hi Number     cterm=bold ctermfg=176 guifg=#E697E6

hi Cursor guifg=#86af5d guibg=#86af5d
hi Cursor2 guifg=red guibg=red
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50
