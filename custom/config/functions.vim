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


function! FindVanilla() abort
  find ~/.config/nvim/doc/vanilla.txt
endfunction

function! FindCustomConfig() abort
  find ~/.config/nvim/lua/core/plugins.lua
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
