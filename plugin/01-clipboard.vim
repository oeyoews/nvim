" BUG: still have some bugs(for gnome paste plugins)
" copy and yank with system
" selsct some text, copy it ro system clipboard
vnoremap <space>yy "+y
" in normal mode, like Y to copy current line,
" but copy it to system clipboard
"
" == yank
"nnoremap <space>yy "*Y <cmd> echom "Finish to copy your system clipboard"<cr>
nnoremap <space>yy "*Y <cmd> lua vim.notify("📋 Copy text to SystemClipBoard")<cr>

" copy
"noremap <space>P "*P
noremap <space>pp "*p <cmd> lua vim.notify("🗒️ Copy text from SystemClipBoard")<cr>

"nnoremap <silent> <space>yp :<C-U>let @+=expand('%:p') <bar> echom "Finished copy fpath."<cr>
nnoremap <silent> <space>yp :<C-U>let @+=expand('%:p') <bar> lua vim.notify(" 🦜 Copy Fpath")<cr>
