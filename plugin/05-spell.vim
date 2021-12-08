" for spelling
set spellfile+=~/.config/nvim/dict/myspell.utf-8.add
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
nnoremap <space>ss <cmd>set invspell<cr>

" need set spell
" fastly quick fix spell error
inoremap <A-h> <c-g>u<Esc>[s1z=`]a<c-g>u
nnoremap <A-h> <c-g>u<Esc>[s1z=`]a<c-g>u

nnoremap <space>qe z=
