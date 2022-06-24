local M = {}

M.plugins = {
  -- @Temporary

  -- @External
  "~/.config/nvim/lua/external/tokyonight.nvim",
  "~/.config/nvim/lua/external/nvim-notify",

  -- @Necessary
  "wbthomason/packer.nvim",
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim",
  -- "rcarriga/nvim-notify",
  "kyazdani42/nvim-web-devicons",
  "nvim-lua/plenary.nvim",
  "stevearc/dressing.nvim",

  -- @Treesitter
  "nvim-treesitter/nvim-treesitter-refactor",
  "p00f/nvim-ts-rainbow",
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  },

  -- @Completion
  "honza/vim-snippets",
  "SirVer/ultisnips",
  "fhill2/telescope-ultisnips.nvim",
  "oeyoews/tabout.nvim",
  "quangnguyen30192/cmp-nvim-ultisnips",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "onsails/lspkind-nvim",
  "hrsh7th/cmp-path",
  "numToStr/Comment.nvim",

  -- @Lspconfig
  "williamboman/nvim-lsp-installer",
  "neovim/nvim-lspconfig",
  "tami5/lspsaga.nvim",

  -- @Tools
  "oeyoews/vim-better-whitespace",
  "j-hui/fidget.nvim",
  "ziontee113/icon-picker.nvim",
  "oeyoews/windline.nvim",
  "akinsho/bufferline.nvim",
  "jbyuki/venn.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "akinsho/toggleterm.nvim",
  "nvim-neorg/neorg",
  "ekickx/clipboard-image.nvim",
  "norcalli/nvim-colorizer.lua",
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
