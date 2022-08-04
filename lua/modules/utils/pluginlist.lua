-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   pluginlist.lua                                                           --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 09:49:53 by oeyoews                                  --
--   Updated: 2022/08/04 16:11:32 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

local markdown_list = {
  {
    "dhruvasagar/vim-table-mode",
    opt = true,
  },
  {
    "ekickx/clipboard-image.nvim",
    opt = true,
  },
  {
    "iamcco/markdown-preview.nvim",
    opt = true,
    run = "cd app && npm install",
  },
  {
    "ziontee113/icon-picker.nvim",
    -- even load, but for packerload fun, use config
    config = [[require("user.lazyload.icon_picker")]],
    opt = true,
  },
  -- a alien
  {
    "nvim-neorg/neorg",
    opt = true,
  },
}

--   plugins list
oeyoews.pluginlist = {
  "j-hui/fidget.nvim",
  {
    "kyazdani42/nvim-tree.lua",
    disable = true,
  },
  "folke/lua-dev.nvim",
  "folke/trouble.nvim",
  {
    "danymat/neogen",
    -- or use ''
    config = [[require("neogen").setup()]],
  },
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim",
  "wbthomason/packer.nvim",
  "nvim-lua/plenary.nvim",
  "kyazdani42/nvim-web-devicons",
  "stevearc/dressing.nvim",
  "lukas-reineke/indent-blankline.nvim",
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
  "neovim/nvim-lspconfig",
  "jose-elias-alvarez/null-ls.nvim",
  "glepnir/lspsaga.nvim",
  -- @TOOLS
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
      -- "nvim-telescope/telescope-ui-select.nvim"
      "kkharji/sqlite.lua",
    },
  },
  "phaazon/hop.nvim",
  "lewis6991/gitsigns.nvim",
  -- bug: slow in lua comment file
  "numToStr/Comment.nvim",
  {
    "windwp/nvim-autopairs",
    config = [[require("nvim-autopairs").setup()]],
  },
  {
    "oeyoews/tabout.nvim",
    config = [[require("tabout").setup()]],
  },
  "folke/which-key.nvim",
  "oeyoews/rnvimr",
  "cappyzawa/trim.nvim",
  -- this lazy load can't work, when directly open markdown file
  -- need this @ref: https://github.com/wbthomason/packer.nvim/issues/892
  -- note: this cmd can't use mapping
  "thinca/vim-quickrun",
  {
    "dstein64/vim-startuptime",
    config = [[require("modules.tools.startup")]],
  },
  -- markdown
  markdown_list,
  -- builtin
  oeyoews.builtin_plugin,
}

--   mappings
vim.keymap.set("n", "<space>fp", function()
  return oeyoews.find_lua_file("lua/modules/utils/pluginlist")
end, { desc = " pluginlist" })
