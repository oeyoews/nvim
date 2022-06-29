local M = {}

M.plugins = {
  "lewis6991/impatient.nvim",

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

  -- @TEMPORARY
  "ziontee113/color-picker.nvim", -- https://www.youtube.com/watch?v=eWRoxJatH8A

  -- @TOOLS
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    requires = {
      "nvim-telescope/telescope-packer.nvim",
    }
  },
  "phaazon/hop.nvim",
  "norcalli/nvim-colorizer.lua",
  "lewis6991/gitsigns.nvim",
  "numToStr/Comment.nvim",
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup() end,
    event = "InsertEnter",
  },
  "Pocco81/HighStr.nvim",
  -- bug:
  {
    "nvim-neorg/neorg",
    config = function() require("modules.tools.neorg").setup() end,
    ft = "norg",
  },
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
    config = function()
      vim.g.mkdp_auto_close = 0
    end,
    run = "cd app && npm install",
    cmd = "MarkdownPreview",
    ft = "markdown",
  },
  "cappyzawa/trim.nvim",
  "ekickx/clipboard-image.nvim",
  "thinca/vim-quickrun",
  "oeyoews/vim-capslock",
  { "oeyoews/vim-startuptime", cmd = "StartupTime" },
}

return M
