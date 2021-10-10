call plug#begin('$HOME/.cache/nvim/plug')

" libs
Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" == completion ==
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-path'

" == snips ==
Plug 'SirVer/ultisnips'
Plug 'oeyoews/vim-snippets'
Plug 'onsails/lspkind-nvim'

" == highlight ==
Plug 'nvim-treesitter/playground', { 'on' : 'TSPlaygroundToggle' }
Plug 'nvim-treesitter/nvim-treesitter', { ' do ' : ' :TSUpdate ' }
Plug 'nvim-treesitter/nvim-treesitter-refactor'

" == markdown ==
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mzlogin/vim-markdown-toc'
Plug 'dhruvasagar/vim-table-mode', { 'for' : 'markdown' }

" == search ==
Plug 'nvim-telescope/telescope.nvim'
Plug 'phaazon/hop.nvim'
Plug 'rhysd/clever-f.vim'

" git
Plug 'lewis6991/gitsigns.nvim'

" tools
Plug 'dstein64/vim-startuptime'
Plug 'yianwillis/vimcdoc'
Plug 'akinsho/bufferline.nvim'
Plug 'preservim/nerdcommenter'
Plug 'folke/which-key.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'thinca/vim-quickrun'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'preservim/nerdtree'

" == ui ==
"Plug 'windwp/windline.nvim'
Plug 'shadmansaleh/lualine.nvim'
Plug 'glepnir/zephyr-nvim'
Plug 'Th3Whit3Wolf/one-nvim'

" local test plugin
Plug '~/.config/nvim/test/vanilla'
Plug '~/.config/nvim/test/osfoew'

Plug 'williamboman/nvim-lsp-installer'
call plug#end()
