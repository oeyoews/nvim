" copy and yank with system
" selsct some text, copy it ro system clipboard
vnoremap <space>yy "*y
" in normal mode, like Y to copy current line,
" but copy it to system clipboard
nnoremap <space>yy "*Y
noremap <space>pp "*p
noremap <space>pP "*P

nnoremap <silent> <space>yp :<C-U>let @+=expand('%:p') <bar>  echom "Finished copy fpath."<cr>
