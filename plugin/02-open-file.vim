function! FindVanilla() abort
  find ~/.config/nvim/doc/vanilla.txt
endfunction

function! FindCustomConfig() abort
  find ~/.config/nvim/custom/config/01-plugins.vim
endfunction

function! FindPlugin() abort
  find ~/.config/nvim/lua/config/lsp/lsp.lua
endfunction

function! FindInit() abort
  find ~/.config/nvim/init.lua
endfunction

" open nvim config file
nnoremap <silent> <space>fi <cmd>call FindInit()<cr>
nnoremap <silent> <space>fc <cmd>call FindCustomConfig()<cr>
nnoremap <silent> <space>fp <cmd>call FindPlugin()<cr>
nnoremap <silent> <space>eh <cmd>call FindVanilla()<cr>

nnoremap <silent> <space>hh <cmd>help vanilla.txt<cr>

nnoremap <leader>bs  <Cmd>e /tmp/scratch.txt<CR>
nnoremap <leader>bb  <Cmd>e `mktemp -t scratch-XXXXXX`<CR>

" draft notebooks
" TODO: write a function, adjust it's dir
"nnoremap <space>fd <cmd>e ~/dotfiles/notes/draft/`date -I`.md<cr>
"nnoremap <space>fd <cmd>e ${NOTES}/markdown/$(date +"%d-%m-%Y").md<cr>
