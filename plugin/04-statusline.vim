" show statusline for at least windows
" set laststatus=0

function ToggleStatusLine() abort
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
