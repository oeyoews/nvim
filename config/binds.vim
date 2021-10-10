" set mapleader
let g:mapleader = " "

" creat blankline no formatoptions
nnoremap <silent> <leader>] :set paste<cr>o<esc>:set nopaste<cr>
nnoremap <silent> <leader>[ :set paste<cr>O<esc>:set nopaste<cr>

" load current file
nnoremap <leader>so <cmd>so % <bar> echohl Search <bar>
            \ echo "Finished refresh current file."<cr>

" redraw screen
nnoremap <ESC> <ESC><C-L>

" quit insert mode fastly
inoremap jk <ESC>

" copy path to clipboard
nnoremap <silent> <leader>yp :<C-U>let @+=expand('%:p') <bar> echohl Search <bar>
            \ echo "Finished file path to clipboard."<cr>

" continue indent
vnoremap >> >gv
vnoremap << <gv

" command mode
noremap <leader><leader> :
nnoremap <leader>ss /

" buffer
nnoremap <silent> <leader><tab> :bp<CR>
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <silent> <leader>bd :bd<CR><C-L>
nnoremap <silent> <leader>bm :messages<CR>
nnoremap <silent> <leader>bx <cmd>enew<cr> 

" quit window
nnoremap <silent><SPACE>qq :q<CR>

" window split
nnoremap <SPACE>ww <C-w>w
nnoremap <SPACE>w- :split<CR>
nnoremap <SPACE>w/ :vsplit<CR>

" better jump
noremap L $

" copy and yank with system
vnoremap <leader>yy "*y
noremap <SPACE>pp "*p
noremap <SPACE>pP "*P

" clear all hlight words
nnoremap <silent> <SPACE>sc :set<SPACE>hlsearch!<CR>

" open config file
nnoremap <silent> <SPACE>fe <cmd>edit $MYVIMRC <cr>
nnoremap <silent> <SPACE>fv <cmd>edit ~/.config/nvim/config/plugs.vim<cr>
nnoremap <silent> <SPACE>fo <cmd>edit ~/.config/nvim/config/opts.vim<cr>
nnoremap <silent> <leader>fb <cmd>edit ~/.config/nvim/config/binds.vim<cr>

" save file
nnoremap <silent> <leader>fs <cmd>w<cr>

nnoremap <leader>wm <cmd>MaximizerToggle!<cr> 

nnoremap <leader>bs   <cmd>edit /tmp/scratch.txt <cr> 
