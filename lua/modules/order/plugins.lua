local M = {}

M.plugins = {
  "lewis6991/impatient.nvim",

  -- "rebelot/kanagawa.nvim",

  -- @PERFECT
  "nathom/filetype.nvim",

  -- @PACKER
  "wbthomason/packer.nvim",

  -- @ORDER
  "lukas-reineke/indent-blankline.nvim",
  "akinsho/bufferline.nvim",
  "oeyoews/windline.nvim",

  -- @NECESSARY
  "kyazdani42/nvim-web-devicons",
  "nvim-lua/plenary.nvim",
  "stevearc/dressing.nvim",

  -- @LANG
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    requires = {
      "nvim-treesitter/nvim-treesitter-refactor",
      "p00f/nvim-ts-rainbow",
    },
  },
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  },
  "williamboman/nvim-lsp-installer",
  "hrsh7th/nvim-cmp",
  "neovim/nvim-lspconfig",
  "jose-elias-alvarez/null-ls.nvim",
  "tami5/lspsaga.nvim",
  "lukas-reineke/lsp-format.nvim",
  "honza/vim-snippets",
  "SirVer/ultisnips",
  "fhill2/telescope-ultisnips.nvim",
  "quangnguyen30192/cmp-nvim-ultisnips",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "onsails/lspkind-nvim",
  "hrsh7th/cmp-path",

  -- @TEMPORARY
  "ziontee113/color-picker.nvim", -- https://www.youtube.com/watch?v=eWRoxJatH8A

  -- @TOOLS
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  },
  "nvim-telescope/telescope.nvim",
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
  "itchyny/calendar.vim",
  "kevinhwang91/rnvimr",
  "jbyuki/venn.nvim",
  "j-hui/fidget.nvim",
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
  },
  "cappyzawa/trim.nvim",
  "ekickx/clipboard-image.nvim",
  "oeyoews/vim-startuptime",
  "thinca/vim-quickrun",
  "oeyoews/vim-capslock",
}

return M
