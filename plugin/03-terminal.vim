" have some bug , if source it twice in xx.vim and xx.lua(because of vim.cmd)
" it's confict for ranger, maybe it's it terminal job

function Shell()
  " TODO: have confict for ranger(TermOpen)
  "setlocal filetype=omz
  "au! TermOpen * call feedkeys("i")
  au! TermClose * call feedkeys("\<esc>")
  split | terminal
  setlocal nornu nonu
endfunction

" add i in the end of line, to patch bug of ranger
nnoremap <silent> <space>ts <cmd>call Shell()<cr>i
