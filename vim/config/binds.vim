let g:mapleader = "\<Space>"

" creat blankline no formatoptions
nnoremap <silent> <leader>o :set paste<cr>o<esc>:set nopaste<cr>
nnoremap <silent> <leader>O :set paste<cr>O<esc>:set nopaste<cr>

" load current file
nnoremap <leader>so <cmd>so % <bar> echo "Finished refresh current file."<cr>

" quit insert mode fastly
inoremap jk <ESC>

" copy path to clipboard
nnoremap <silent> <leader>yp :<C-U>let @+=expand('%:p') <bar>
            \ echom "Finished copy fpath."<cr>

" continue indent
vnoremap >> >gv
vnoremap << <gv

" command mode
noremap <leader><leader> :

" buffer
nnoremap <silent> <leader><tab> :bp<CR>
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <silent> <leader>bx <cmd>enew<cr>

" quit window
nnoremap <silent> <SPACE>qq :q<CR>

" better jump
noremap L $
noremap H 0

" copy and yank with system
" selsct some text, copy it ro system clipboard
vnoremap <leader>yy "*y
" in normal mode, like Y to copy current line,
" but copy it to system clipboard
nnoremap <leader>yy "*Y
noremap <SPACE>pp "*p
noremap <SPACE>pP "*P

" clear all hlight words
nnoremap <silent> <SPACE>sc <cmd>nohlsearch<cr>

" TODO
function OpenPlugins()
  let plugins="~/.config/nvim/vim/autoload/plugins.vim"
  if exists('plugins')
    exec "e ~/.config/nvim/vim/autoload/plugins.vim"
  else
    echom "Sorry, no this file"
  end
endfunction

" open config file
nnoremap <silent> <SPACE>fv <cmd>call OpenPlugins()<cr>
nnoremap <silent> <space>fi <cmd>edit ~/.config/nvim/init.lua<cr>

nnoremap <leader>bs  <Cmd>e /tmp/scratch.txt<CR>

" note this <cr> not have virtual space
nnoremap <leader>fs :w<cr>

nnoremap <leader>qh q:

function Termopen()
  setlocal splitbelow
  split
  terminal
  setlocal nornu nonu
endfunction

nnoremap <leader>tt <cmd>call Termopen()<cr>i

nnoremap q <nop>

nnoremap <leader>w <C-w>
