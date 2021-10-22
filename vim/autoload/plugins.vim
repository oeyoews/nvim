call plug#begin('$HOME/.config/nvim/.bundle')

" completeion
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

" fast install you code lsp
Plug 'williamboman/nvim-lsp-installer'

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
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ' :TSUpdate ' }

" highligh your variable for refrence and define
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

" test your StartupTime
Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime' }

" chinese vimhelp
Plug 'yianwillis/vimcdoc', { 'frozen': 1 }

" manage your buffers
Plug 'akinsho/bufferline.nvim'

" comment your code or txt
Plug 'preservim/nerdcommenter'

" show all keys
Plug 'folke/which-key.nvim'

" auto add another brackets
Plug 'jiangmiao/auto-pairs'

" quick run your code
Plug 'thinca/vim-quickrun', { 'on': 'QuickRun' }

" statusline
Plug 'famiu/feline.nvim'

" a theme for neovim color
Plug 'NvChad/nvim-base16.lua'

" select chunk txt
Plug 'gcmt/wildfire.vim'

" enable color for some files
Plug 'norcalli/nvim-colorizer.lua'

" use sudo to manage your files
Plug 'oeyoews/suda.vim', { 'frozen': 1 }

Plug 'lewis6991/gitsigns.nvim'

Plug 'oeyoews/tokyonight.nvim'
"Plug 'nanotee/luv-vimdocs'

Plug '~/.config/nvim/.bundle/vanilla-lua'

call plug#end()
