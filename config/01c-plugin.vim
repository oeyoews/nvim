autocmd VimEnter *  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) | PlugInstall --sync | q | endif

let g:plug_url_format = 'https://hub.fastgit.xyz/%s.git'
let s:plug_dir = '$HOME/.local/share/nvim/nvim_bundles'
call plug#begin(s:plug_dir)

" @Temporary
"Plug 'lukas-reineke/lsp-format.nvim'

" @ Prefence
Plug 'nathom/filetype.nvim'
Plug 'lewis6991/impatient.nvim'

" @LspConfig
Plug 'onsails/lspkind-nvim'
Plug 'SirVer/ultisnips'
Plug 'oeyoews/vim-snippets'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
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

" @Color
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
Plug 'lervag/vimtex'
"Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
"Plug 'nvim-telescope/telescope-fzy-native.nvim'
"Plug 'oeyoews/suda.vim', { 'frozen': 1 }
"Plug 'hrsh7th/cmp-latex-symbols'
"Plug 'oeyoews/beacon.nvim', { 'frozen': 1 }
"Plug 'edluffy/specs.nvim'
"Plug 'famiu/feline.nvim'  " to setup 04-statusline
"Plug 'yamatsum/nvim-cursorline'
"Plug 'oeyoews/nvim-cursorword'
"Plug 'github/copilot.vim'
"Plug 'kyazdani42/nvim-tree.lua'
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
"Plug 'nvim-treesitter/playground', { 'on': 'TSPlaygroundToggle' }
"Plug 'phaazon/hop.nvim'
"Plug 'inkarkat/vim-SpellCheck'
"Plug 'inkarkat/vim-ingo-library'
"Plug 'skywind3000/vim-dic'
"Plug 'jayli/vim-dictionary'
"Plug 'uga-rosa/cmp-dictionary'
"Plug 'abecodes/tabout.nvim'
"Plug 'kevinhwang91/rnvimr'
"Plug 'folke/zen-mode.nvim'
"Plug 'sukima/vim-tiddlywiki'
"Plug 'Pocco81/TrueZen.nvim'
"Plug 'tyru/open-browser.vim'
"Plug 'goolord/alpha-nvim'
"Plug 'catppuccin/nvim', {'as': 'catppuccin'}
"Plug 'marko-cerovac/material.nvim'
"Plug 'mfussenegger/nvim-lint'
"Plug 'jose-elias-alvarez/null-ls.nvim'

call plug#end()
