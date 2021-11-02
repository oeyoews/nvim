call plug#begin('$HOME/.config/nvim/.bundle')

" completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'

" libs for some nvim plugins
Plug 'nvim-lua/plenary.nvim'

" icons for you ui
Plug 'kyazdani42/nvim-web-devicons'

" configure your lsp
Plug 'neovim/nvim-lspconfig'

" config lua lsp
Plug 'folke/lua-dev.nvim'

"a snip engine
Plug 'SirVer/ultisnips'

" my snippets
Plug 'oeyoews/vim-snippets', { 'frozen': 1 }

" support some icons for you menu
Plug 'onsails/lspkind-nvim'

" debug your code
Plug 'nvim-treesitter/playground', { 'on': 'TSPlaygroundToggle' }

" better highlight
Plug 'nvim-treesitter/nvim-treesitter'

" highlight your variable for reference and define
Plug 'nvim-treesitter/nvim-treesitter-refactor'

" preview your markdown in your brower
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': 'markdown' }

" generate your markdown toc
Plug 'mzlogin/vim-markdown-toc'

" better markdown for your table
Plug 'dhruvasagar/vim-table-mode', { 'for' : 'markdown' }

" it's rich
Plug 'nvim-telescope/telescope.nvim'

" fast jump you want jump
Plug 'phaazon/hop.nvim'

" test your Startup Time
Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime' }

" Chinese vim help
Plug 'yianwillis/vimcdoc', { 'frozen': 1 }

" manage your buffers
Plug 'akinsho/bufferline.nvim'

" comment your code or txt
Plug 'preservim/nerdcommenter'

" show all keys
Plug 'folke/which-key.nvim'

" auto pairs
Plug 'windwp/nvim-autopairs'

" quick run your code
Plug 'thinca/vim-quickrun', { 'on': 'QuickRun' }

" select chunk txt
Plug 'gcmt/wildfire.vim'

" use sudo to manage your files
Plug 'oeyoews/suda.vim', { 'frozen': 1 }

"Plug 'oeyoews/tokyonight.nvim'

Plug 'oeyoews/beacon.nvim'

Plug 'folke/persistence.nvim'

Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

Plug 'lewis6991/spellsitter.nvim'
Plug 'NvChad/nvim-base16.lua'
"Plug 'famiu/feline.nvim'
"Plug 'norcalli/nvim-colorizer.lua'
"Plug '~/.config/nvim/docs'
"Plug 'yamatsum/nvim-cursorline'
"Plug 'oeyoews/nvim-cursorword'
"Plug 'github/copilot.vim'
"Plug 'kyazdani42/nvim-tree.lua'
"Plug 'lewis6991/gitsigns.nvim'
"Plug 'williamboman/nvim-lsp-installer'
"Plug 'mfussenegger/nvim-jdtls'
"Plug 'olimorris/onedarkpro.nvim'
"Plug 'henriquehbr/nvim-startup.lua'
"Plug 'alec-gibson/nvim-tetris'
"Plug 'oeyoews/nvim-deus'
call plug#end()
