"language messages en_US.utf8 " have bug
" setlocal just for the first file
setlocal spell  " for cmp-spell
set spelllang=en_us
set spellfile+=~/.config/nvim/dict/myspell.utf-8.add
set ignorecase
set termguicolors
set undofile
set signcolumn=yes
set autochdir
set nowrap
set linebreak
set hidden
set ignorecase
"set textwidth=120
set shortmess+=aIc  " atI clear advertise
set lazyredraw
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
set scrolloff=3
set updatetime=200	" ??
set foldmethod=marker
set conceallevel=0
set timeoutlen=1000
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set listchars=tab:→\ ,eol:↵,trail:▫,extends:↷,precedes:↶
set whichwrap+=<,>,[,]
set splitright
set splitbelow
set cursorline
set nu
"set t_ti= t_te=
"set shortmess=atI  " disable show welcome and no clear this ui to quit vim
set foldenable
" use ctrl k && ctrl l
"set dictionary+=~/.config/nvim/dict/myself.txt
" h 'complete' or may use ctrl x && ctrl k
" ctrl x && ctrl L(copy line)
" ctrl x && ctrl f(complete filename)
set complete+=k~/.config/nvim/dict/myself.md
