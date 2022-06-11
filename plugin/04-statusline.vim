" show statusline for at least windows
" set laststatus=0
" set noruler

function ToggleStatusLine() abort
  if &laststatus
    set laststatus=0
  else
    set laststatus=2
  endif
  lua vim.notify("ToggleStatusLine")
endfunction

nnoremap <silent> <leader>ts :call ToggleStatusLine()<CR>
