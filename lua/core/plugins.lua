vim.cmd([[
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
" NOTE: need add ssh idpub
" let g:plug_url_format = 'git@github.com:%s.git'
"
" definaite plugins location
let s:plug_install_dir = stdpath('data') . '/plugged'

call plug#begin(s:plug_install_dir)

if has('nvim')

" @Temporary
Plug 'sindrets/diffview.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-neorg/neorg', { 'for': 'norg', 'on': 'NeorgStart' }
Plug 'itchyny/calendar.vim'
Plug 'ellisonleao/glow.nvim'
Plug 'marko-cerovac/material.nvim'
Plug 'olimorris/onedarkpro.nvim'
Plug 'b0o/incline.nvim', { 'frozen': 1 }
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'ekickx/clipboard-image.nvim'
Plug 'abecodes/tabout.nvim'
Plug 'Pocco81/HighStr.nvim'
Plug 'windwp/nvim-ts-autotag'
Plug 'kevinhwang91/rnvimr'
" \time \nvim +q
Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime', 'frozen': 1, 'commit': '61f122ebc41e9bcf1793c752a728db59feee77bb' }
Plug 'folke/trouble.nvim', { 'on': 'TroubleToggle' }
Plug 'lukas-reineke/indent-blankline.nvim'

" @Dependencies
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
Plug 'hrsh7th/cmp-emoji', { 'for': 'markdown' }
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
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'phaazon/hop.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'folke/which-key.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'thinca/vim-quickrun', { 'on': 'QuickRun', 'frozen': 1 }
Plug 'folke/persistence.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'for': 'markdown', 'do': 'cd app && yarn install' }

endif

call plug#end()

" more plugins: https://github.com/rockerBOO/awesome-neovim
" tips: https://www.reddit.com/r/neovim/comments/opipij/guide_tips_and_tricks_to_reduce_startup_and
" Plug 'stevearc/dressing.nvim'
" Plug 'henriquehbr/nvim-startup.lua'
" Plug 'CRAG666/code_runner.nvim'
" Plug 'notomo/gesture.nvim'
" Plug 'romgrk/barbar.nvim'
" Plug 'jbyuki/venn.nvim'
" Plug 'rainbowhxch/beacon.nvim'
" vim version
" Plug 'danilamihailov/beacon.nvim'
" bug: invalid window id"
" Plug 'sunjon/shade.nvim'
" Plug 'jiangmiao/auto-pairs'
" Plug 'rafcamlet/nvim-luapad'
]])
