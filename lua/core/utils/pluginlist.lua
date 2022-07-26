-- @pluginlist
oeyoews.pluginlist = {
  "dhruvasagar/vim-table-mode",
  -- @luaversion: 5.1
  "kyazdani42/nvim-tree.lua",
  "SmiteshP/nvim-navic",
  "folke/lua-dev.nvim",
  "mhartington/formatter.nvim",
  "mzlogin/vim-markdown-toc",
  "danymat/neogen",
  -- @dependencies
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim",
  "wbthomason/packer.nvim",
  "nvim-lua/plenary.nvim",
  "kyazdani42/nvim-web-devicons",
  "stevearc/dressing.nvim",
  -- @ORDER
  "lukas-reineke/indent-blankline.nvim",
  "akinsho/bufferline.nvim",
  "oeyoews/windline.nvim",
  -- @LANG
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    requires = {
      "nvim-treesitter/nvim-treesitter-refactor",
      "p00f/nvim-ts-rainbow",
    },
  },
  -- "williamboman/nvim-lsp-installer",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  {
    "hrsh7th/nvim-cmp",
    requires = {
      "quangnguyen30192/cmp-nvim-ultisnips",
      "hrsh7th/cmp-buffer",
    },
  },
  "neovim/nvim-lspconfig",
  "jose-elias-alvarez/null-ls.nvim",
  "kkharji/lspsaga.nvim",
  "honza/vim-snippets",
  "SirVer/ultisnips",
  "hrsh7th/cmp-nvim-lsp",
  "onsails/lspkind-nvim",
  "hrsh7th/cmp-path",
  -- @TOOLS
  "folke/todo-comments.nvim",
  {
    "nvim-telescope/telescope.nvim",
    requires = {
      "nvim-telescope/telescope-packer.nvim",
    },
  },
  "phaazon/hop.nvim",
  "norcalli/nvim-colorizer.lua",
  "lewis6991/gitsigns.nvim",
  "numToStr/Comment.nvim",
  "windwp/nvim-autopairs",
  "folke/persistence.nvim",
  "oeyoews/tabout.nvim",
  "folke/which-key.nvim",
  "ziontee113/icon-picker.nvim",
  "j-hui/fidget.nvim",
  "kevinhwang91/rnvimr",
  "cappyzawa/trim.nvim",
  "ekickx/clipboard-image.nvim",
  "thinca/vim-quickrun",
  "oeyoews/vim-startuptime",
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
  },
}
