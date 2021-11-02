
function! FindVanilla() abort
  find ~/.config/nvim/doc/vanilla.txt
endfunction

function! FindPlugin() abort
  find ~/.config/nvim/config/plugin.vim
endfunction

function! FindInit() abort
  find ~/.config/nvim/init.vim
endfunction

" open nvim config file
nnoremap <silent> <space>fi <cmd>call FindInit()<cr>
nnoremap <silent> <space>fv <cmd>call FindPlugin()<cr>
nnoremap <silent> <space>eh <cmd>call FindVanilla()<cr>

nno <silent> <space>hh <cmd>help vanilla.txt<cr>
