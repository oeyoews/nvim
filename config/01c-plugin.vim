autocmd VimEnter *   if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) | PlugInstall --sync | q | endif

" NOTE: need reinstall all plugins with url_format
let g:plug_url_format = 'https://hub.fastgit.xyz/%s.git'
let s:plug_dir = '$HOME/.local/share/nvim/nvim_bundles'
" NOTE: don't put it in current directory like .config/nvim/xxx, so that to change another branch
call plug#begin(s:plug_dir)


" TODO: setup install plugin automatically at first(data: spacevim)
Plug 'nathom/filetype.nvim'
Plug 'lewis6991/impatient.nvim'

" @LspConfig
Plug 'onsails/lspkind-nvim'
Plug 'SirVer/ultisnips'
Plug 'oeyoews/vim-snippets'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'mfussenegger/nvim-lint'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'folke/lua-dev.nvim'
Plug 'tami5/lspsaga.nvim'

" @Dependcies
Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" @UI
Plug 'rcarriga/nvim-notify'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'akinsho/bufferline.nvim'

" color
Plug 'norcalli/nvim-colorizer.lua'

" @Editor
Plug 'mzlogin/vim-markdown-toc', { 'frozen': 1 }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': 'markdown' }

" @Tools
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdcommenter'
Plug 'folke/which-key.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'thinca/vim-quickrun', { 'on': 'QuickRun', 'frozen': 1 }
Plug 'folke/persistence.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'fladson/vim-kitty'

Plug 'lewis6991/gitsigns.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'folke/tokyonight.nvim'

" @Deprecated
"Plug 'gcmt/wildfire.vim', { 'frozen': 1 }
"Plug 'lewis6991/spellsitter.nvim'
"Plug 'sindrets/diffview.nvim'
"Plug 'ggandor/lightspeed.nvim'
"Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime', 'frozen': 1}
"Plug 'yianwillis/vimcdoc', { 'frozen': 1 }
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Plug 'dhruvasagar/vim-table-mode', { 'for' : ['markdown'] }
"Plug 'plasticboy/vim-markdown'
"Plug 'lervag/vimtex'

"Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
"Plug 'nvim-telescope/telescope-fzy-native.nvim'
" use sudo to manage your files
"Plug 'oeyoews/suda.vim', { 'frozen': 1 }
"Plug 'hrsh7th/cmp-latex-symbols'

" shrink jump cursor
"Plug 'oeyoews/beacon.nvim', { 'frozen': 1 }
"Plug 'edluffy/specs.nvim'


"Plug 'famiu/feline.nvim'  " to setup 04-statusline
"Plug 'yamatsum/nvim-cursorline'
"Plug 'oeyoews/nvim-cursorword'
"Plug 'github/copilot.vim'
"Plug 'kyazdani42/nvim-tree.lua'
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
"Plug 'folke/zen-mode.nvim'
"TODO:
" add open browser
"Plug 'sukima/vim-tiddlywiki'
"Plug 'Pocco81/TrueZen.nvim'
"Plug 'tyru/open-browser.vim'
"Plug 'goolord/alpha-nvim'
"Plug 'catppuccin/nvim', {'as': 'catppuccin'}
"Plug 'marko-cerovac/material.nvim'
call plug#end()
