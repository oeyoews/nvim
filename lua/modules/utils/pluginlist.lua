-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   pluginlist.lua                                                           --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 09:49:53 by oeyoews                                  --
--   Updated: 2022/08/06 00:28:20 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

--   plugins list
oeyoews.pluginlist = {
  -- https://github.com/VonHeikemen/lsp-zero.nvim/wiki/Under-the-hood
  -- this lsp-zero recommended to read
  "neovim/nvim-lspconfig",
  "folke/which-key.nvim",
  "oeyoews/rnvimr",
  "cappyzawa/trim.nvim",
  -- this lazy load can't work, when directly open markdown file
  -- need this @ref: https://github.com/wbthomason/packer.nvim/issues/892
  -- note: this cmd can't use mapping
  "thinca/vim-quickrun",
  "phaazon/hop.nvim",
  "jose-elias-alvarez/null-ls.nvim",
  "glepnir/lspsaga.nvim",
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim",
  "wbthomason/packer.nvim",
  "nvim-lua/plenary.nvim",
  "kyazdani42/nvim-web-devicons",
  "stevearc/dressing.nvim",
  "j-hui/fidget.nvim",
  "folke/lua-dev.nvim",
  "folke/trouble.nvim",
  {
    "ziontee113/icon-picker.nvim",
    -- bind this key, to load this by hand
    keys = { "<space>ie" }, -- normal
    event = "InsertEnter", -- inser mode alt-i
    -- even load, but for packerload fun, use config
    config = [[oeyoews.lazyload.emoji()]],
    opt = true,
  },
  {
    "danymat/neogen",
    cmd = "Neogen",
    -- or use ''
    config = [[require("neogen").setup()]],
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    config = [[require("modules.ui.indent")]],
  },
  -- bufferline
  {
    "akinsho/bufferline.nvim",
    requires = {
      "tiagovla/scope.nvim",
    },
  },
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    requires = {
      "p00f/nvim-ts-rainbow",
      "nvim-treesitter/nvim-treesitter-refactor",
    },
  },
  -- mason
  {
    "williamboman/mason.nvim",
    requires = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
  },
  -- cmp
  {
    "hrsh7th/nvim-cmp",
    requires = {
      "quangnguyen30192/cmp-nvim-ultisnips",
      "hrsh7th/cmp-buffer",
      "honza/vim-snippets",
      "SirVer/ultisnips",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
    },
  },
  -- @TOOLS:
  {
    "folke/todo-comments.nvim",
    config = [[require("todo-comments").setup()]],
  },
  -- not lazy load this plugin, such as icon-picker
  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("modules.tools.telescope")
    end,
    requires = {
      "nvim-telescope/telescope-packer.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
      "nvim-telescope/telescope-frecency.nvim",
      "kkharji/sqlite.lua",
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    config = function()
      oeyoews.lazyload.gitsigns()
    end,
  },
  -- bug: slow in lua comment file
  {
    "numToStr/Comment.nvim",
    config = [[require("modules.tools.comment")]],
  },
  {
    "windwp/nvim-autopairs",
    config = [[require("nvim-autopairs").setup()]],
  },
  {
    "oeyoews/tabout.nvim",
    config = [[require("tabout").setup()]],
  },
  {
    "oeyoews/nvim-colorizer.lua",
    cmd = "ColorizerToggle",
    config = [[require("colorizer").setup()]],
  },
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
    config = [[vim.g.startuptime_event_width = 30]],
  },
  -- a alien
  -- TODO: add uncertain code and to bind this code mapping
  -- have a delay for highlight
  -- add modified time in inject meta
  -- actually, all most plugin not need lazyload, even it very slow, this neorg is lazyload itself, lazyload it is unmeanthingfun
  {
    "nvim-neorg/neorg",
    config = [[require("modules.tools.neorg")]],
  },
  -- markdown
  {
    "dhruvasagar/vim-table-mode",
    cmd = "TableModeToggle",
    ft = "markdown",
  },
  {
    "ekickx/clipboard-image.nvim",
    ft = "markdown",
    cmd = "PasteImg",
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    config = [[oeyoews.lazyload.mkdp()]],
  },
  -- builtin
  oeyoews.builtin_plugin,
}

--   mappings
vim.keymap.set("n", "<space>fp", function()
  return oeyoews.find_lua_file("lua/modules/utils/pluginlist")
end, { desc = " pluginlist" })
