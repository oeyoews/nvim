set completeopt=menuone,noinsert,noselect,menu
set virtualedit=onemore
set cursorline
set matchtime=2
set undofile
set signcolumn=yes
set number relativenumber
set autochdir  " simply minbuffer messages
language messages en_US.utf8
set nowrap
set smartcase
set exrc
set secure
set mouse+=a " support mouse
set linebreak " better wrap
set hidden  " not must be save current buffer
set ignorecase  " better search"
" right: mode statusline
set showcmd  
" left: location statusline
set noshowmode 
set shortmess+=aIc  " atI clear advertise
set expandtab  " disable expand tab to whitespace
set timeoutlen=1000
set textwidth=120  " after 120 char, wrap automatically
" set showmatch  " call quote in visual
set shiftwidth=2  " default indent distance for >> <<
set tabstop=2 " tab == 2 column, like 单位
set softtabstop=2 " tab == 2 column truly
set guifont=Droid\ Sans\ Mono
set smartindent
" set clipboard^=unnamed
set nolist " show return it configcit for link
set listchars=tab:→\ ,eol:↵,trail:▫,extends:↷,precedes:↶
set lazyredraw "same as above
set vb t_vb= " no sound, no shine
set novisualbell
set noerrorbells  " no beeps
set nobackup  " no backfile
set noswapfile  " no swapfile
set nofoldenable " disable automatical fold code, you can fold code by hand must in before
set confirm
set scrolloff=3
set updatetime=200	" ??
set foldmethod=marker  " set foldmethod
set shell=zsh
