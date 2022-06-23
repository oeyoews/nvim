local M = {}

M.plugins = {
  -- @NeovimManager
  "wbthomason/packer.nvim",

  -- @Necessary
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim",
  "rcarriga/nvim-notify",
  "kyazdani42/nvim-web-devicons",
  "nvim-lua/plenary.nvim",
  "stevearc/dressing.nvim",

  -- @Temporary
  "oeyoews/vim-better-whitespace",
  "ziontee113/icon-picker.nvim", -- require dressing.nvim

  -- @Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  },
  "nvim-treesitter/nvim-treesitter-refactor",
  "p00f/nvim-ts-rainbow",
  "windwp/nvim-ts-autotag",

  -- @Completion
  {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "onsails/lspkind-nvim",
      "hrsh7th/cmp-path",
      "honza/vim-snippets",
      "SirVer/ultisnips",
      "quangnguyen30192/cmp-nvim-ultisnips",
      "fhill2/telescope-ultisnips.nvim",
      "oeyoews/tabout.nvim",
      "numToStr/Comment.nvim",
    },
  },

  -- @Lspconfig
  "williamboman/nvim-lsp-installer",
  {
    "neovim/nvim-lspconfig",
    requires = {
      "tami5/lspsaga.nvim",
      "lukas-reineke/lsp-format.nvim",
    },
  },

  -- @Tools
  "jbyuki/venn.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "norcalli/nvim-colorizer.lua",
  "oeyoews/windline.nvim",
  "akinsho/bufferline.nvim",
  "akinsho/toggleterm.nvim",
  "nvim-neorg/neorg",
  "ekickx/clipboard-image.nvim",
  "Pocco81/HighStr.nvim",
  "folke/which-key.nvim",
  "nvim-telescope/telescope.nvim",
  "phaazon/hop.nvim",
  "folke/persistence.nvim",
  "lewis6991/gitsigns.nvim",
  "windwp/nvim-autopairs",
  "oeyoews/vim-startuptime",
  "kevinhwang91/rnvimr",
  "itchyny/calendar.vim",
  "thinca/vim-quickrun",
}

return M
