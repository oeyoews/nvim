" have some bug
set confirm
set shortmess=atI  " disable show welcome and no clear this ui to quit vim
" set t_ti= t_te=
" set fillchars=eob:•
" set fcs=eob:\ ,fold:•
" https://github.com/neovim/neovim/pull/8546
let &fcs='eob: '

syntax on
set t_Co=16
set nocompatible
set noshowmode
set noshowcmd
set noruler
set number
set nocursorline
set expandtab
set noshiftround
set lazyredraw
set magic
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set modelines=0
set formatoptions=tqn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cmdheight=1
set laststatus=2
set backspace=indent,eol,start
set list
set listchars=tab:\│\
set matchpairs+=<:>
set statusline=%1*\ file\ %3*\ %f\ %4*
set statusline+=%=
set statusline+=%3*\ %l\ of\ %L\ %2*\ line
set scrolloff=4

inoremap  jk <ESC>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
nmap <C-O> o<Esc>
nmap <C-F> /
imap <S-Right> <Esc>lv<Right>
imap <C-Up> <Esc>8ka
imap <C-Down> <Esc>8ja
imap <C-O> <Esc>o
imap <C-Y> <Esc><C-R>a
"imap <Nul> <C-N>
hi linenr ctermfg=8
hi cursorline cterm=NONE
hi cursorlinenr ctermfg=15
hi comment ctermfg=8

hi pmenu ctermbg=0 ctermfg=NONE
hi pmenusel ctermbg=4 ctermfg=0
hi pmenusbar ctermbg=0
hi pmenuthumb ctermbg=7

hi matchparen ctermbg=black ctermfg=NONE
hi search ctermbg=0
hi statusline ctermbg=0 ctermfg=NONE
hi statuslinenc ctermbg=0 ctermfg=0
hi user1 ctermbg=1 ctermfg=0
hi user2 ctermbg=4 ctermfg=0
hi user3 ctermbg=0 ctermfg=NONE
hi user4 ctermbg=NONE ctermfg=NONE
hi group1 ctermbg=NONE ctermfg=0
autocmd colorscheme * hi clear cursorline
match group1 /\t/

noremap <space>fs :w<CR>
noremap <space>q :q<CR>
