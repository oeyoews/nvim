call plug#begin('$HOME/.config/nvim/.bundle')

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nathom/filetype.nvim'
Plug 'lewis6991/impatient.nvim'
Plug 'nvim-neorg/neorg', { 'for': 'norg' }

" Lsp config
" support some icons for you menu
Plug 'onsails/lspkind-nvim'
"a snip engine
Plug 'SirVer/ultisnips'
" my snippets
Plug 'oeyoews/vim-snippets', { 'frozen': 1 }
" configure your lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-path'
" if you want not use more tip, maybe you can comment it
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lua'
" for norg is no effects
"Plug 'f3fora/cmp-spell'

" libs for some nvim plugins
Plug 'nvim-lua/plenary.nvim'

" icons for you ui
Plug 'kyazdani42/nvim-web-devicons'

" config lua lsp
Plug 'folke/lua-dev.nvim'

" debug your code
"Plug 'nvim-treesitter/playground', { 'on': 'TSPlaygroundToggle' }

" better highlight
Plug 'nvim-treesitter/nvim-treesitter'

" highlight your variable for reference and define
Plug 'nvim-treesitter/nvim-treesitter-refactor'

" preview your markdown in your brower
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': 'markdown' }

" generate your markdown toc
Plug 'mzlogin/vim-markdown-toc', { 'frozen': 1 }

" better markdown for your table
Plug 'dhruvasagar/vim-table-mode', { 'for' : ['markdown', 'norg'] }

" it's rich
Plug 'nvim-telescope/telescope.nvim'

" fast jump you want jump
"Plug 'phaazon/hop.nvim'
Plug 'ggandor/lightspeed.nvim'

" test your Startup Time
Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime', 'frozen': 1}

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
Plug 'thinca/vim-quickrun', { 'on': 'QuickRun', 'frozen': 1 }

" select chunk txt
"Plug 'gcmt/wildfire.vim', { 'frozen': 1 }

" use sudo to manage your files
"Plug 'oeyoews/suda.vim', { 'frozen': 1 }

" shrink jump
"Plug 'oeyoews/beacon.nvim', { 'frozen': 1 }
Plug 'edluffy/specs.nvim'

" save session
Plug 'folke/persistence.nvim'

" color
Plug 'norcalli/nvim-colorizer.lua'
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" spell for nvim-tree sitter
"Plug 'lewis6991/spellsitter.nvim'

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
"Plug 'oeyoews/tokyonight.nvim'
"Plug 'kristijanhusak/orgmode.nvim'
"Plug 'akinsho/org-bullets.nvim'
"Plug 'xiyaowong/nvim-transparent'
"Plug 'tribela/vim-transparent'
call plug#end()
