-- @module: plugins.lua
-- @ref: core.utils.bootstrap.lua

local pluginlist = {}

pluginlist = {
  "mhartington/formatter.nvim",
  "m-demare/hlargs.nvim",
  "arjunmahishi/run-code.nvim",
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
  "folke/trouble.nvim",
  "williamboman/nvim-lsp-installer",
  {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-cmdline",
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
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
  },
}

return pluginlist
