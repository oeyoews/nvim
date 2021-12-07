" for spelling
function! TestSpelling()
  if &spell
    set nospell
    "echo &spell
    echo "disable spell"
  else
    set spell
    "echo &spell
    echo "enable spell"
  endif
endfunction

" TODO
nnoremap <space>ss <cmd>call TestSpelling()<cr>

" need set spell
" fastly quick fix spell error
inoremap <C-h> <c-g>u<Esc>[s1z=`]a<c-g>u

nnoremap <space>qe z=
