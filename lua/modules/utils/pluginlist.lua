-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   pluginlist.lua                                                           --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 09:49:53 by oeyoews                                  --
--   Updated: 2022/08/02 00:58:09 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

--   plugins list
oeyoews.pluginlist = {
  "rafcamlet/nvim-luapad",
  "kyazdani42/nvim-tree.lua",
  "folke/lua-dev.nvim",
  "folke/trouble.nvim",
  {
    "danymat/neogen",
    config = [[require("neogen").setup()]],
  },
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim",
  "wbthomason/packer.nvim",
  "nvim-lua/plenary.nvim",
  "kyazdani42/nvim-web-devicons",
  "stevearc/dressing.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "akinsho/bufferline.nvim",
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  },
  "nvim-treesitter/nvim-treesitter-refactor",
  "p00f/nvim-ts-rainbow",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  "hrsh7th/nvim-cmp",
  "quangnguyen30192/cmp-nvim-ultisnips",
  "hrsh7th/cmp-buffer",
  "neovim/nvim-lspconfig",
  "jose-elias-alvarez/null-ls.nvim",
  "glepnir/lspsaga.nvim",
  "honza/vim-snippets",
  "SirVer/ultisnips",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-path",
  -- @TOOLS
  {
    "folke/todo-comments.nvim",
    config = [[require("todo-comments").setup()]],
  },
  -- not lazy load this plugin, such as icon-picker
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("modules.tools.telescope")
    end,
    requires = {
      "nvim-telescope/telescope-packer.nvim",
    },
  },
  "phaazon/hop.nvim",
  "norcalli/nvim-colorizer.lua",
  "lewis6991/gitsigns.nvim",
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
  "kevinhwang91/rnvimr",
  "cappyzawa/trim.nvim",
  -- this lazy load can't work, when directly open markdown file
  -- need this @ref: https://github.com/wbthomason/packer.nvim/issues/892
  -- note: this cmd can't use mapping
  "thinca/vim-quickrun",
  {
    "dstein64/vim-startuptime",
    config = [[require("modules.tools.startup")]],
  },
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
    opt = true,
  },
  oeyoews.builtin_plugin,
}

--   mappings
vim.keymap.set("n", "<space>fp", function()
  return oeyoews.find_lua_file("lua/modules/utils/pluginlist")
end, { desc = " pluginlist" })
