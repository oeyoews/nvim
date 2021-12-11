" for spelling
" for spell dir, en...add this file is auto, just for more file exist
set spellfile+=~/.config/nvim/spell/myspell.utf-8.add
set spelllang=en_us,cjk

" use ctrl k && ctrl l
"set dictionary+=~/.config/nvim/dict/myself.txt
" h 'complete' or may use ctrl x && ctrl k
" ctrl x && ctrl L(copy line)
" ctrl x && ctrl f(complete filename)
"
set complete+=k~/.config/nvim/dict/myself.md

"function! ToggleSpelling()
  "if &spell
    "setlocal nospell
    ""echo &spell
    "echo "disable spell"
  "else
    "setlocal spell
    ""echo &spell
    "echo "enable spell"
  "endif
"endfunction

" TODO
"nnoremap <space>ss <cmd>call ToggleSpelling()<cr>
nnoremap <space>ss <cmd>setlocal invspell<cr>

" need set spell
" fastly quick fix spell error
inoremap <silent> <A-h> <c-g>u<Esc>[s1z=`]a<c-g>u
" TODO:
"nnoremap <A-h> <c-g>u<Esc>[s1z=`]a<c-g>u

nnoremap <space>qe z=

nnoremap <leader>ed  <Cmd>e ~/.config/nvim/dict/myself.md<CR>
nnoremap <leader>es  <Cmd>e ~/.config/nvim/dict/myspell.utf-8.add<CR>
