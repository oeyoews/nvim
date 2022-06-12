" First install setting steps
let data_dir = stdpath('data') . '/site'

if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
" bug: always less one
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC | endif

" Speedup install plugins
" let g:plug_url_format = 'https://hub.fastgit.xyz/%s.git'
"
" definate plugins location
let s:plug_install_dir = stdpath('data') . '/plugged'

call plug#begin(s:plug_install_dir)

if has('nvim')

" @Temporary
Plug 'windwp/nvim-ts-autotag'
Plug 'kevinhwang91/rnvimr'
Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime', 'frozen': 1, 'commit': '61f122ebc41e9bcf1793c752a728db59feee77bb'}
Plug 'folke/trouble.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'

" @Dependcies
Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'rcarriga/nvim-notify'

" @Performance
Plug 'yianwillis/vimcdoc', { 'frozen': 1 }
Plug 'nathom/filetype.nvim'
Plug 'lewis6991/impatient.nvim'

" @Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-path'
Plug 'tami5/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'lukas-reineke/lsp-format.nvim'
Plug 'ray-x/lsp_signature.nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'p00f/nvim-ts-rainbow'
Plug 'numToStr/Comment.nvim'

" @Tools
Plug 'windwp/windline.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'phaazon/hop.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'folke/which-key.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'thinca/vim-quickrun', { 'on': 'QuickRun', 'frozen': 1 }
Plug 'folke/persistence.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'folke/todo-comments.nvim'

" @Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

endif

call plug#end()
