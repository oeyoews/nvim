local g = vim.g

g.mapleader = ' '

vim.cmd([[
" BUG: last line highlight is not correct
"
"let g:mapleader = " "
" let g:mapleader = "\<Space>"

nnoremap <leader>bd <cmd>bdelete<cr>
" create blankline nto formatoptions
"nnoremap <silent> <leader>o :set paste<cr>o<esc>:set nopaste<cr>
"nnoremap <silent> <leader>O :set paste<cr>O<esc>:set nopaste<cr>

" load current config file
" nnoremap <leader>so <cmd>so % <bar> lua vim.notify("🍺 Finished refresh current file.")<cr>
nnoremap <silent> <leader>so <cmd>luafile %<cr> :lua vim.notify("🍺 Finished refresh current file.")<cr>

" quit insert mode fastly
inoremap jk <ESC>

" continue indent
vnoremap >> >gv
vnoremap << <gv

" command mode
nnoremap <leader><leader> :

" buffer
nnoremap <silent> <leader><tab> :bp<CR>
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <silent> <leader>bx <cmd>enew<cr>

" quit window
nnoremap <silent> <space>qq :q<CR>
nnoremap <silent> <space>qa :qa<CR>

" better jump
noremap L $
noremap H 0

" note this <cr> not have virtual space
nnoremap <silent> <leader>fs :w<cr>

nnoremap <leader>qh q:

nnoremap q <nop>

nnoremap <leader>w <C-w>
nnoremap <silent> <leader>bm :messages<cr>

" clear or highlight search words
"nnoremap <silent> <SPACE>sc <cmd>nohlsearch<cr>
"nnoremap <silent> <esc> :set invhlsearch<return><C-L><esc>
" in neovim 0.6, you can use Ctrl + l to clear it
" @deprecated
"nnoremap <space>bc <cmd>set invhlsearch<cr>
nnoremap <silent> <esc> :noh<return><C-L><esc>

" is same to neorg start, but is no effect
"nnoremap <silent> <space>tn <cmd>setlocal invnumber<cr>

" @feature
" Y: to yank current cursor to end of the line
" C: to cut current cursor to end of the line

"autocmd FileType norg
"vnoremap <space>nn mzI+<esc>A+<esc>`z

nnoremap <silent> <SPACE>tf <Cmd>only<bar> lua vim.notify("🍺 FullScreen")<cr>

nnoremap <silent> <leader>tn <cmd>set invnumber<cr>

" BUG: still have some bugs(for gnome paste plugins)
" copy and yank with system
" selsct some text, copy it ro system clipboard
vnoremap <space>yy "+y
" in normal mode, like Y to copy current line,
" but copy it to system clipboard
"
" == yank
"nnoremap <space>yy "*Y <cmd> echom "Finish to copy your system clipboard"<cr>
nnoremap <space>yy "*Y <cmd> lua vim.notify("📋 Copy text to SystemClipBoard")<cr>

" copy
"noremap <space>P "*P
noremap <space>pp "*p <cmd> lua vim.notify("🗒️ Copy text from SystemClipBoard")<cr>

"nnoremap <silent> <space>yp :<C-U>let @+=expand('%:p') <bar> echom "Finished copy fpath."<cr>
nnoremap <silent> <space>yp :<C-U>let @+=expand('%:p') <bar> lua vim.notify(" 🦜 Copy Fpath")<cr>

" toggle spell
nnoremap <space>ss <cmd>set invspell <bar> lua vim.notify("Toggle Spell")<cr>
]])
