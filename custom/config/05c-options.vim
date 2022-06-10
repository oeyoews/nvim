" let $LANG = 'en'  "set message language
" set langmenu=en   "set menu's language of gvim. no spaces beside '='
"set cindent
set smartindent
" visual degree chars symbols
"set conceallevel=1
set mouse+=a
set ignorecase
set termguicolors
set undofile
"set ttyfast
set signcolumn=yes
set autochdir
set wrap
set linebreak
set hidden
set ignorecase
"set textwidth=120
set shortmess+=aIc  " atI clear advertise
"set lazyredraw
set vb t_vb=  " no blinking no bells

" disable some options
set noshowcmd
set noshowmode
set nobackup
set noswapfile
set nofoldenable

" incease highlight
set incsearch
set hlsearch

set confirm
"set scrolloff=3
set updatetime=200
set foldmethod=marker
set timeoutlen=1000
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set list
" set listchars=tab:→\ ,eol:↵,trail:▫,extends:↷,precedes:↶
set listchars=tab:\ ,
set whichwrap+=<,>,[,]
set splitright
set splitbelow
" disable it, when use emoji, or other sititions, this visual will have some
" but not resolve all bug
" kitty terminal cause it
set cursorline
set number
"set guifont=Fira\ Code\ 14
"set t_ti= t_te=
"set shortmess=atI  " disable show welcome and no clear this ui to quit vim
"set clipboard=unnamed
" equal set so
"set scrolloff=999
