-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   pluginlist.lua                                                           --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 09:49:53 by oeyoews                                  --
--   Updated: 2022/08/01 14:31:39 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

oeyoews.pluginlist = {
  "rafcamlet/nvim-luapad",
  "kyazdani42/nvim-tree.lua",
  "folke/lua-dev.nvim",
  "folke/trouble.nvim",
  "danymat/neogen",
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
  "folke/todo-comments.nvim",
  "nvim-telescope/telescope.nvim",
  "nvim-telescope/telescope-packer.nvim",
  "phaazon/hop.nvim",
  "norcalli/nvim-colorizer.lua",
  "lewis6991/gitsigns.nvim",
  "numToStr/Comment.nvim",
  "windwp/nvim-autopairs",
  "oeyoews/tabout.nvim",
  "folke/which-key.nvim",
  "kevinhwang91/rnvimr",
  "cappyzawa/trim.nvim",
  -- this lazy load can't work, when directly open markdown file
  -- need this @ref: https://github.com/wbthomason/packer.nvim/issues/892
  "thinca/vim-quickrun",
  "dstein64/vim-startuptime",
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
    config = function()
      require("modules.tools.mkdp")
    end,
    run = "cd app && npm install",
  },
  {
    "mzlogin/vim-markdown-toc",
    opt = true,
  },
  {
    "ziontee113/icon-picker.nvim",
    cmd = "",
    opt = true,
    config = function()
      require("modules.tools.icon_picker")
    end,
  },
  oeyoews.builtin_plugin,
}

-- mapping
vim.keymap.set("n", "<space>fp", function()
  return oeyoews.find_lua_file("lua/modules/utils/pluginlist")
end, { desc = " pluginlist" })
