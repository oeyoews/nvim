-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   pluginlist.lua                                                           --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 09:49:53 by oeyoews                                  --
--   Updated: 2022/08/30 18:16:52 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- packerload is from this list load, if no add config for lazyload, it still not work,
-- so better method is use ftplugin for some
-- filetypes plugins
-- plugins list
oeyoews.pluginlist = {
  "nguyenvukhang/nvim-toggler",
  "lervag/vimtex", -- not support lazyload
  "neovim/nvim-lspconfig",
  "folke/which-key.nvim",
  "oeyoews/rnvimr",
  "cappyzawa/trim.nvim",
  "thinca/vim-quickrun",
  "sukima/vim-tiddlywiki", -- note: this maybe can't load be web browser
  "phaazon/hop.nvim",
  "jose-elias-alvarez/null-ls.nvim",
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim",
  "nvim-lua/plenary.nvim",
  "kyazdani42/nvim-web-devicons",
  "stevearc/dressing.nvim",
  "j-hui/fidget.nvim",
  "folke/lua-dev.nvim",
  "folke/trouble.nvim",
  {
    "ziontee113/icon-picker.nvim",
    keys = {
      "<space>ie",
    },
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
    config = [[require("modules.ui.indent")]],
  },
  "akinsho/bufferline.nvim",
  {
    "nvim-treesitter/nvim-treesitter", -- nvim-treesitter bug: checkhealth nvim-treesitter, and execute tsinstall! vim
    -- lock = true,
    run = ":TSUpdate",
    requires = {
      "p00f/nvim-ts-rainbow",
      "nvim-treesitter/nvim-treesitter-refactor",
    },
  },
  {
    "williamboman/mason.nvim",
    requires = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    lock = true,
    requires = {
      "quangnguyen30192/cmp-nvim-ultisnips",
      "hrsh7th/cmp-buffer",
      "SirVer/ultisnips",
      "honza/vim-snippets",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
    },
  },
  {
    "folke/todo-comments.nvim",
    config = [[require("todo-comments").setup()]],
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("modules.tools.telescope")
    end,
    requires = {
      "nvim-telescope/telescope-packer.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      oeyoews.lazyload.gitsigns()
    end,
  },
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
    config = [[vim.g.startuptime_event_width = 30]],
  },
  {
    "nvim-neorg/neorg",
    -- tag = "0.0.12",
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
  "wbthomason/packer.nvim",
  oeyoews.builtin_plugin,
}

--  mappings
vim.keymap.set("n", "<space>fp", function()
  return oeyoews.find_lua_file("lua/modules/utils/pluginlist")
end, { desc = " pluginlist" })
