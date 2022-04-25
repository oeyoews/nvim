" BUG: still have some bugs(for gnome paste plugins)
" copy and yank with system
" selsct some text, copy it ro system clipboard
vnoremap <space>yy "+y
" in normal mode, like Y to copy current line,
" but copy it to system clipboard
"
" == yank
nnoremap <space>yy "*Y <cmd> echom "🎉 Finish to copy your system clipboard"<cr>

" copy
noremap <space>pp "*p
"noremap <space>P "*P

nnoremap <silent> <space>yp :<C-U>let @+=expand('%:p') <bar>  echom "Finished copy fpath."<cr>
