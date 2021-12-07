" bug: last highlight is not correct
"
let g:mapleader = "\<Space>"

" creat blankline nto formatoptions
nnoremap <silent> <leader>o :set paste<cr>o<esc>:set nopaste<cr>
nnoremap <silent> <leader>O :set paste<cr>O<esc>:set nopaste<cr>

" load current file
nnoremap <leader>so <cmd>so % <bar> echo "Finished refresh current file."<cr>

" quit insert mode fastly
inoremap jk <ESC>

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
nnoremap <silent> <space>qq :q<CR>

" better jump
noremap L $
noremap H 0

" clear all hlight words
"nnoremap <silent> <SPACE>sc <cmd>nohlsearch<cr>
nnoremap <silent> <esc> :noh<return><C-L><esc>

nnoremap <leader>bs  <Cmd>e /tmp/scratch.txt<CR>
nnoremap <leader>ed  <Cmd>e ~/.config/nvim/dict/myself.md<CR>
nnoremap <leader>es  <Cmd>e ~/.config/nvim/dict/myspell.utf-8.add<CR>

" note this <cr> not have virtual space
nnoremap <silent> <leader>fs :w<cr>

nnoremap <leader>qh q:

nnoremap q <nop>

nnoremap <leader>w <C-w>
nnoremap <silent> <leader>bm :messages<cr>

" vim plug
nnoremap <Leader>vi <Cmd>PlugInstall<CR>
nnoremap <Leader>vc <Cmd>PlugClean<CR>
nnoremap <Leader>vu <Cmd>PlugUpdate<CR>
