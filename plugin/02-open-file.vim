
function! FindVanilla() abort
  find ~/.config/nvim/doc/vanilla.txt
endfunction

function! FindPlugin() abort
  find ~/.config/nvim/custom/config/01c-plugin.vim
endfunction

function! FindInit() abort
  find ~/.config/nvim/init.vim
endfunction

" open nvim config file
nnoremap <silent> <space>fi <cmd>call FindInit()<cr>
nnoremap <silent> <space>fv <cmd>call FindPlugin()<cr>
nnoremap <silent> <space>eh <cmd>call FindVanilla()<cr>

nnoremap <silent> <space>hh <cmd>help vanilla.txt<cr>

nnoremap <leader>bs  <Cmd>e /tmp/scratch.txt<CR>
nnoremap <leader>bb  <Cmd>e `mktemp -t scratch-XXXXXX`<CR>

" draft notebooks
" TODO: write a function, adjust it's dir
"nnoremap <space>fd <cmd>e ~/dotfiles/notes/draft/`date -I`.md<cr>
"nnoremap <space>fd <cmd>e ${NOTES}/markdown/$(date +"%d-%m-%Y").md<cr>

