local M = {}

M.plugins = {
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
      "quangnguyen30192/cmp-nvim-ultisnips",
      "hrsh7th/cmp-buffer",
    },
  },
  "neovim/nvim-lspconfig",
  "jose-elias-alvarez/null-ls.nvim",
  "tami5/lspsaga.nvim",
  "lukas-reineke/lsp-format.nvim",
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
      "ziontee113/color-picker.nvim", -- https://www.youtube.com/watch?v=eWRoxJatH8A
    }
  },
  "phaazon/hop.nvim",
  "norcalli/nvim-colorizer.lua",
  "lewis6991/gitsigns.nvim",
  "numToStr/Comment.nvim",
  "windwp/nvim-autopairs",
  "Pocco81/HighStr.nvim",
  "nvim-neorg/neorg",
  "folke/persistence.nvim",
  "oeyoews/tabout.nvim",
  "folke/which-key.nvim",
  "akinsho/toggleterm.nvim",
  "ziontee113/icon-picker.nvim",
  "jbyuki/venn.nvim",
  "j-hui/fidget.nvim",
  "itchyny/calendar.vim",
  "kevinhwang91/rnvimr",
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
  },
  "cappyzawa/trim.nvim",
  "ekickx/clipboard-image.nvim",
  "thinca/vim-quickrun",
  "oeyoews/vim-capslock",
  "oeyoews/vim-startuptime",
}

return M