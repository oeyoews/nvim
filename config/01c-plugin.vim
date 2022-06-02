" maybe should use command PlugClean to fix url confilct
" OPENMIRROR: let g:plug_url_format = 'https://hub.fastgit.org/%s.git'
let g:plug_url_format = 'https://hub.fastgit.xyz/%s.git'
" NOTE: don't put it in current directory like .config/nvim/xxx, so that to change another branch
call plug#begin('$HOME/.local/share/nvim/nvim_bundle')


" TODO: setup install plugin automatically at first(data: spacevim)
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
Plug 'williamboman/nvim-lsp-installer'
"Plug 'mhartington/formatter.nvim'
Plug 'mfussenegger/nvim-lint'
"TODO: fix this border is nothing
"Plug 'hrsh7th/nvim-cmp', { 'frozen': 1, 'commit': 'fae808a2' }
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-latex-symbols'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'folke/lua-dev.nvim'
Plug 'tami5/lspsaga.nvim'

" @Dependcies
" libs for some nvim plugins
Plug 'nvim-lua/plenary.nvim'
" icons for you ui
Plug 'kyazdani42/nvim-web-devicons'

" @UI
Plug 'rcarriga/nvim-notify'
" better highlight
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
" highlight your variable for reference and define
Plug 'nvim-treesitter/nvim-treesitter-refactor'
" manage your buffers
Plug 'akinsho/bufferline.nvim'
" color
"Plug 'glepnir/zephyr-nvim'
Plug 'norcalli/nvim-colorizer.lua'
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
"Plug 'NvChad/nvim-base16.lua'


" @Editor
" generate your markdown toc command: Gen...
" bug: not support zh-cn
Plug 'mzlogin/vim-markdown-toc', { 'frozen': 1 }
" preview your markdown in your browser
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': 'markdown' }
Plug 'iamcco/markdown-preview.nvim'
" better markdown for your table 'norg'
"Plug 'dhruvasagar/vim-table-mode', { 'for' : ['markdown'] }
" fix some error and color
"Plug 'plasticboy/vim-markdown'
" org mode for nvim
"Plug 'nvim-neorg/neorg', { 'for': 'norg', 'do': ':TSUpdate'  }
"Plug 'nvim-neorg/neorg', { 'for': 'norg', }
Plug 'lervag/vimtex'


" @Tools
Plug 'sindrets/diffview.nvim'
" it's rich
Plug 'nvim-telescope/telescope.nvim'
" fast jump you want jump
"Plug 'ggandor/lightspeed.nvim'
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
" better for long code block
Plug 'lukas-reineke/indent-blankline.nvim'
" for kitty syntax, need set it's filetype by hand
Plug 'fladson/vim-kitty'
" spell for nvim-tree sitter
Plug 'lewis6991/spellsitter.nvim'

Plug 'folke/todo-comments.nvim'
Plug 'folke/tokyonight.nvim'
" @Deprecated
" select chunk txt
"Plug 'gcmt/wildfire.vim', { 'frozen': 1 }

"Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
"Plug 'nvim-telescope/telescope-fzy-native.nvim'
" use sudo to manage your files
"Plug 'oeyoews/suda.vim', { 'frozen': 1 }

" shrink jump cursor
"Plug 'oeyoews/beacon.nvim', { 'frozen': 1 }
"Plug 'edluffy/specs.nvim'


"Plug 'famiu/feline.nvim'  " to setup 04-statusline
"Plug 'yamatsum/nvim-cursorline'
"Plug 'oeyoews/nvim-cursorword'
"Plug 'github/copilot.vim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lewis6991/gitsigns.nvim'
"
"TODO:
"Plug 'williamboman/nvim-lsp-installer'
"Plug 'mfussenegger/nvim-jdtls'
"Plug 'olimorris/onedarkpro.nvim'
"Plug 'henriquehbr/nvim-startup.lua'
"Plug 'alec-gibson/nvim-tetris'
"Plug 'oeyoews/nvim-deus'
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
"TODO:
"Plug 'abecodes/tabout.nvim'
" another ranger
"Plug 'kevinhwang91/rnvimr'
Plug 'folke/zen-mode.nvim'
"TODO:
" add open browser
"Plug 'sukima/vim-tiddlywiki'
"Plug 'Pocco81/TrueZen.nvim'
Plug 'tyru/open-browser.vim'
"Plug 'goolord/alpha-nvim'
"Plug 'catppuccin/nvim', {'as': 'catppuccin'}
"Plug 'marko-cerovac/material.nvim'
call plug#end()
