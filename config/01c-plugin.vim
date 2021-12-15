call plug#begin('$HOME/.config/nvim/.bundle')

" @Improve
" improve Startup time
Plug 'nathom/filetype.nvim'
" command: luacacheclear, luacachelog
Plug 'lewis6991/impatient.nvim'

" @LspConfig
" support some icons for you menu
Plug 'onsails/lspkind-nvim'
"a snip engine
Plug 'SirVer/ultisnips'
" my snippets
Plug 'oeyoews/vim-snippets'
" configure your lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-look'
"Plug 'f3fora/cmp-spell'
" if you want not use more tip, maybe you can comment it
"Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lua'
" config lua lsp
Plug 'folke/lua-dev.nvim'
Plug 'tami5/lspsaga.nvim'

" @Dependcies
" libs for some nvim plugins
Plug 'nvim-lua/plenary.nvim'
" icons for you ui
Plug 'kyazdani42/nvim-web-devicons'


" @UI
" better highlight
Plug 'nvim-treesitter/nvim-treesitter'
" highlight your variable for reference and define
Plug 'nvim-treesitter/nvim-treesitter-refactor'
" manage your buffers
Plug 'akinsho/bufferline.nvim'
" color
Plug 'norcalli/nvim-colorizer.lua'
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'NvChad/nvim-base16.lua'


" @Editor
" generate your markdown toc
" command: Gen...
Plug 'mzlogin/vim-markdown-toc', { 'frozen': 1 }
" preview your markdown in your browser
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': 'markdown' }
" better markdown for your table
Plug 'dhruvasagar/vim-table-mode', { 'for' : ['markdown', 'norg'] }
Plug 'nvim-neorg/neorg', { 'for': 'norg' }


" @Tools
" it's rich
Plug 'nvim-telescope/telescope.nvim'
" fast jump you want jump
Plug 'ggandor/lightspeed.nvim'
" test your Startup Time
Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime', 'frozen': 1}
" Chinese vim help
Plug 'yianwillis/vimcdoc', { 'frozen': 1 }
" comment your code or txt
Plug 'preservim/nerdcommenter'
" show all keys
Plug 'folke/which-key.nvim'
" auto pairs
Plug 'windwp/nvim-autopairs'
" quick run your code
Plug 'thinca/vim-quickrun', { 'on': 'QuickRun', 'frozen': 1 }
" save session
Plug 'folke/persistence.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
"Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
"Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'lervag/vimtex'
" for kitty syntax, need set it's filetype by hand
Plug 'fladson/vim-kitty'




" @Deprecated
" select chunk txt
"Plug 'gcmt/wildfire.vim', { 'frozen': 1 }

" use sudo to manage your files
"Plug 'oeyoews/suda.vim', { 'frozen': 1 }

" shrink jump cursor
"Plug 'oeyoews/beacon.nvim', { 'frozen': 1 }
"Plug 'edluffy/specs.nvim'

" spell for nvim-tree sitter
Plug 'lewis6991/spellsitter.nvim'

"Plug 'famiu/feline.nvim'  " to setup 04-statusline
Plug 'folke/todo-comments.nvim'
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
" debug your code
"Plug 'nvim-treesitter/playground', { 'on': 'TSPlaygroundToggle' }
" for norg is no effects
"Plug 'phaazon/hop.nvim'
"
"Plug 'inkarkat/vim-SpellCheck'
"Plug 'inkarkat/vim-ingo-library'
"
"Plug 'skywind3000/vim-dic'
"Plug 'jayli/vim-dictionary'
" have some bug
"Plug 'uga-rosa/cmp-dictionary'
call plug#end()
