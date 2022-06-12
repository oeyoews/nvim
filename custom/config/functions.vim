" have some bug , if source it twice in xx.vim and xx.lua(because of vim.cmd)
" it's confict for ranger, maybe it's it terminal job

function! Terminal()
  " TODO: have confict for ranger(TermOpen)
  "setlocal filetype=omz
  "au! TermOpen * call feedkeys("i")
  au! TermClose * call feedkeys("\<esc>")
  split | terminal
  setlocal nornu nonu
  setlocal nocursorline
endfunction

" add i in the end of line, to patch bug of ranger
nnoremap <silent> <space>tk <cmd>call Terminal()<cr>i


" config chezmoi
function! ChezmoiSource() abort
  " exec zsh not use , just int current vim work
  !chezmoi apply --source-path "%"
endfunction

autocmd BufWritePost ~/.local/share/chezmoi/dot_* :call ChezmoiSource()

"
" show statusline for at least windows
" set laststatus=0

function! ToggleStatusLine() abort
  if &laststatus
    set laststatus=0
    set ruler!
  else
    set laststatus=2
    set ruler!
  endif
  lua vim.notify("ToggleStatusLine")
endfunction

nnoremap <silent> <leader>ts :call ToggleStatusLine()<CR>
