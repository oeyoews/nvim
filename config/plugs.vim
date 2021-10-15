call plug#begin('$HOME/.cache/nvim/plug')

" libs
Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'williamboman/nvim-lsp-installer'

" == completion ==
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'folke/lua-dev.nvim'

" == snips ==
Plug 'SirVer/ultisnips'
Plug 'oeyoews/vim-snippets'
Plug 'onsails/lspkind-nvim'

" == highlight ==
Plug 'nvim-treesitter/playground', { 'on': 'TSPlaygroundToggle' }
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ' :TSUpdate ' }
Plug 'nvim-treesitter/nvim-treesitter-refactor'

" == markdown ==
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': 'markdown' }
Plug 'mzlogin/vim-markdown-toc'
Plug 'dhruvasagar/vim-table-mode', { 'for' : 'markdown' }

" == search ==
Plug 'nvim-telescope/telescope.nvim'
Plug 'phaazon/hop.nvim'

" tools
Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime' }
Plug 'yianwillis/vimcdoc'
Plug 'akinsho/bufferline.nvim'
Plug 'preservim/nerdcommenter'
Plug 'folke/which-key.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'thinca/vim-quickrun', { 'on': 'QuickRun' }

Plug 'famiu/feline.nvim'
Plug 'NvChad/nvim-base16.lua'
Plug 'gcmt/wildfire.vim'
Plug 'oeyoews/nvim-deus'
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()
