" First install setting steps
let data_dir = stdpath('data') . '/site'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
" BUG: always less one
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Speedup install plugins
" let g:plug_url_format = 'https://hub.fastgit.xyz/%s.git'
"
" definate plugins location
let s:plug_dir = stdpath('data') . '/nvim_bundles'

call plug#begin(s:plug_dir)

if has('nvim')

" @Temporary
Plug 'b0o/incline.nvim', { 'frozen': 1 }
Plug 'yianwillis/vimcdoc', { 'frozen': 1 }

" @Dependcies
Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'rcarriga/nvim-notify'

" @Performance
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
Plug 'hrsh7th/cmp-cmdline'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-emoji'
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
Plug 'romgrk/barbar.nvim'
Plug 'editorconfig/editorconfig-vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'phaazon/hop.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'folke/which-key.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'thinca/vim-quickrun', { 'on': 'QuickRun', 'frozen': 1 }
Plug 'folke/persistence.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'fladson/vim-kitty'

" @Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

endif

" @Theme
" Plug 'folke/tokyonight.nvim'

" @ConfigDap: https://github.com/ravenxrz/dotfiles/blob/master/nvim/lua/user/conf/nvim-spectre.lua

call plug#end()

" @Deprecated
"Plug 'gcmt/wildfire.vim', { 'frozen': 1 }
"Plug 'lewis6991/spellsitter.nvim'
"Plug 'ggandor/lightspeed.nvim'
"Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime', 'frozen': 1}
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Plug 'dhruvasagar/vim-table-mode', { 'for' : ['markdown'] }
"Plug 'plasticboy/vim-markdown'
"Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
"Plug 'nvim-telescope/telescope-fzy-native.nvim'
"Plug 'oeyoews/suda.vim', { 'frozen': 1 }
"Plug 'hrsh7th/cmp-latex-symbols'
"Plug 'oeyoews/beacon.nvim', { 'frozen': 1 }
"Plug 'edluffy/specs.nvim'
"Plug 'yamatsum/nvim-cursorline'
"Plug 'oeyoews/nvim-cursorword'
"Plug 'github/copilot.vim'
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
"Plug 'folke/lua-dev.nvim'
"Plug 'windwp/nvim-spectre'
"Plug 'lervag/vimtex'
"Plug 'kyazdani42/nvim-tree.lua'
" Plug 'j-hui/fidget.nvim'
"Plug 'andymass/vim-matchup'
"Plug 'nvim-lualine/lualine.nvim'
"Plug 'glepnir/dashboard-nvim'
"Plug 'uga-rosa/cmp-dictionary'
"Plug 'RRethy/vim-illuminate'
"Plug 'oeyoews/vim-snippets'
"Plug 'preservim/nerdcommenter'
"Plug 'ravenxrz/nvim-dap'
"Plug 'rcarriga/nvim-dap-ui'
"Plug 'ravenxrz/DAPInstall.nvim'
"Plug 'theHamsta/nvim-dap-virtual-text'
"Plug 'jbyuki/one-small-step-for-vimkind'
"Plug 'mzlogin/vim-markdown-toc', { 'frozen': 1 }
"Plug '~/.config/nvim/after/theme/tokyonight'
"Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'seblj/nvim-tabline'
" Plug 'akinsho/bufferline.nvim'
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'famiu/feline.nvim'
" Plug 'jbyuki/nabla.nvim'
" Plug 'nvim-lua/popup.nvim'
" Plug 'sindrets/diffview.nvim'
