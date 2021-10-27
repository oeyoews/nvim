" must ins this hi file
lua << EOF
--[[
-- noyice set up your terminal bg is similar vim's bg
local base16 = require 'base16'
base16(base16.themes("tokyonight"), true)
--]]
EOF


colorscheme tokyonight

" transparent background and float background
" hi Normal      guifg=#b9c0cd ctermbg=NONE guibg=NONE
"hi Normal      guifg=#c0caf5 guibg=#24283b
"hi Normal       guifg=#c0caf5 guibg=#24283b
" black
"hi Normal       guifg=#a9b1d6 guibg=#1A1B26
"hi NormalFloat  ctermbg=NONE guibg=NONE
"hi NormalFloat  guifg=#c0caf5 guibg=#1f2335
""hi SignColumnSB guifg=#3b4261 guibg=#1f2335

" search highlight
hi IncSearch  cterm=bold ctermfg=16 ctermbg=167 gui=bold guifg=#292b2e guibg=#ce537a
hi Search     cterm=bold ctermfg=16 ctermbg=76 gui=bold guifg=#292b2e guibg=#86dc2f
" "highlight! link Visual Search


""hi PmenuSbar  ctermfg=28 ctermbg=233 guifg=#c269fe guibg=#303030
hi PmenuSbar    ctermbg=248 guibg=#2A2E3F
hi PmenuSel    ctermfg=242 ctermbg=0 gui=bold guifg=#282c34 guibg=#73b8f1
" sidebar second
"hi PmenuThumb ctermfg=160 ctermbg=97 guifg=#e0211d guibg=#73b8f1
hi PmenuThumb ctermfg=160 ctermbg=97 guifg=#282c34 guibg=#73b8f1

" keyword
hi Keyword    cterm=bold ctermfg=68 gui=bold guifg=#4f97d7

" number's color
hi LineNr     ctermfg=239 guifg=#44505c

" highlight current number bg and fg
hi CursorLineNr guifg=#c269fe guibg=black

hi VertSplit guibg=#4f97d7
" "hi StatusLine guibg=#4f97d7
" cursor
hi Cursor guifg=#86af5d guibg=#86af5d
hi Cursor2 guifg=red guibg=red
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50

"au VimEnter,VimResume * set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  "\,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  "\,sm:block-blinkwait175-blinkoff150-blinkon175

"au VimLeave,VimSuspend * set guicursor=a:block-blinkon0
