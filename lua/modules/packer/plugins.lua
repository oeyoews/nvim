local M = {}

M.plugins = {
  -- @PACKER
  "wbthomason/packer.nvim",

  -- @PERFECT
  "nathom/filetype.nvim",

  -- @UI
  -- "~/.config/nvim/lua/builtin/tokyonight.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "akinsho/bufferline.nvim",
  "oeyoews/windline.nvim",
  -- "~/.config/nvim/lua/builtin/nvim-notify",

  -- @TOOLS
  "phaazon/hop.nvim",
  "norcalli/nvim-colorizer.lua",
  "lewis6991/gitsigns.nvim",
  "numToStr/Comment.nvim",
  "windwp/nvim-autopairs",
  "Pocco81/HighStr.nvim",
  "nvim-neorg/neorg",
  "folke/persistence.nvim",
  "oeyoews/tabout.nvim",
  "nvim-telescope/telescope.nvim",
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

  -- @NECESSARY
  "lewis6991/impatient.nvim",
  "kyazdani42/nvim-web-devicons",
  "nvim-lua/plenary.nvim",
  "stevearc/dressing.nvim",

  -- @LSP
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  },
  "williamboman/nvim-lsp-installer",
  "hrsh7th/nvim-cmp",
  "neovim/nvim-lspconfig",
  "jose-elias-alvarez/null-ls.nvim",
  "tami5/lspsaga.nvim",
  "lukas-reineke/lsp-format.nvim",
  "nvim-treesitter/nvim-treesitter-refactor",
  "p00f/nvim-ts-rainbow",
  "honza/vim-snippets",
  "SirVer/ultisnips",
  "fhill2/telescope-ultisnips.nvim",
  "quangnguyen30192/cmp-nvim-ultisnips",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "onsails/lspkind-nvim",
  "hrsh7th/cmp-path",

  -- @TEMPORARY

  -- @Disabable
  {
    "oeyoews/vim-better-whitespace",
    disable = true,
  },
  {
    "mfussenegger/nvim-lint",
    disable = true,
  },
}

return M
