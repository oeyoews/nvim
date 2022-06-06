colorscheme tokyonight
"colorscheme material
"let g:material_style = "palenight"
"colorscheme catppuccin

lua << EOF
--[[
require('material.functions').change_style("palenight")
--]]
EOF

lua << EOF
--[[
local base16 = require 'base16'
base16(base16.themes("tokyonight"), true)
--]]
EOF

lua << EOF
--[[
local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup()
--]]
EOF

" transparent background and float background
" hi Normal      guifg=#b9c0cd ctermbg=NONE guibg=NONE
"hi Normal      guifg=#c0caf5 guibg=#24283b
"hi Normal       guifg=#c0caf5 guibg=#24283b
" black
"hi Normal       guifg=#a9b1d6 guibg=#1A1B26
" second float window
"hi NormalFloat  ctermbg=NONE guibg=NONE
"hi NormalFloat  guifg=#c0caf5 guibg=#1f2335
hi IncSearch  cterm=bold ctermfg=16 ctermbg=167 guifg=#292b2e guibg=#ce537a
hi Search     ctermfg=16 ctermbg=76 guifg=#292b2e guibg=#86dc2f

" float menu
"hi Pmenu        ctermfg=0 ctermbg=13 guifg=#a9b1d6 guibg=#3b4261
"hi PmenuSbar    ctermbg=248 guibg=#2A2E3F
"hi PmenuSel     ctermfg=242 ctermbg=0 guifg=#282c34 guibg=#73b8f1
" sidebar second
"hi PmenuThumb ctermfg=160 ctermbg=97 guifg=#282c34 guibg=#73b8f1
"
" Visual"
"hi Visual         ctermbg=242 gui=reverse

" keyword
hi Keyword    cterm=bold ctermfg=68 guifg=#8167a3 gui=bold

" note: if it's no rnu, you must enable cursor-line(highlight current line)
"hi CursorLineNr      guifg=#c269fe guibg=#000000
hi CursorLineNr      guifg=#51afef guibg=#000000
" highlight cursor-line
" use material_style to comment this
"hi CursorLine        guibg=black

" split line
"hi VertSplit guibg=#4f97d7
"hi VertSplit guibg=#51afef
" Status Line
hi StatusLine guibg=#24283b

" this cusor must follow this theme
" by this order to fix it
"hi Cursor guifg=#51afef guibg=#51afef
"hi Cursor2 guifg=red guibg=red
"set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50

"hi SpellBad   ctermbg=9 gui=underline guisp=#f7768e
hi SpellBad   ctermbg=9 gui=underline guifg=#f7768e

command! -nargs=?  Mdt TableModeToggle
