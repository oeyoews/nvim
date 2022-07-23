vim.cmd([[
command! -nargs=1 Out ene|pu=execute('<args>')
command! Scripts split | ene|pu=execute('scriptnames')
command! -nargs=1 -complete=highlight HI ene|pu=execute('hi <args>')
command! -nargs=?  -complete=color Themes colorscheme <args>
" command! -nargs=?  -complete=file Snap PackerSnap <args>

function! FormatFile() abort
let save_cursor = getpos('.')
normal! gg=G
call setpos('.', save_cursor)
endfunction

function! Terminal()
" TODO: have conflict for ranger(TermOpen)
"au! TermOpen * call feedkeys("i")
autocmd! TermClose * call feedkeys("\<esc>")
split | terminal
setlocal nornu nonu
setlocal nocursorline
endfunction

function! ToggleStatusLine() abort
if &laststatus
set laststatus=0
else
set laststatus=3
endif
endfunction

"nnoremap <space>fd <cmd>e ~/dotfiles/notes/draft/`date -I`.md<cr>
"nnoremap <space>fd <cmd>e ${NOTES}/markdown/$(date +"%d-%m-%Y").md<cr>

" add i in the end of line, to enter insert mode
nnoremap <silent> <space>tk <cmd>call Terminal()<cr>i

nnoremap <silent> <space>tS :call ToggleStatusLine()<CR>

" nnoremap <silent> <space>eh <cmd>call FindVanilla()<cr>

" NOTE: This same file type will overwrite

augroup quickquit
autocmd!
autocmd FileType notify,null-ls-info,lspinfo,startuptime,help,qf,quickrun,snippets,tsplayground nnoremap <buffer> <silent> q :q<cr>
autocmd FileType startuptime,help setlocal nocursorline nonumber norelativenumber
augroup END

augroup cursorline_goggle
au!
autocmd InsertEnter * setlocal nocursorline " | setlocal rnu
autocmd InsertLeave * setlocal cursorline " | setlocal nornu have bug for telescope prompt
augroup END
]])
