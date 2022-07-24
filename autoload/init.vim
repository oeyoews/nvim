" deprecated
function! init#formatfile() abort
let save_cursor = getpos('.')
normal! gg=G
call setpos('.', save_cursor)
endfunction

function! init#terminal() abort
" TODO: have conflict for ranger(TermOpen)
au! TermOpen * call feedkeys("i")
autocmd! TermClose * call feedkeys("\<esc>")
split | terminal
setlocal nornu nonu
setlocal nocursorline
endfunction

function! init#sline() abort
if &laststatus
set laststatus=0
else
set laststatus=3
endif
endfunction
