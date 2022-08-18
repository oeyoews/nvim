-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   pluginlist.lua                                                           --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 09:49:53 by oeyoews                                  --
--   Updated: 2022/08/18 09:38:20 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- packerload is from this list load, if no add config for lazyload, it still not work,
-- so better method is use ftplugin for some
-- filetypes plugins
--   plugins list
oeyoews.pluginlist = {
  -- not support lazyload
  "lervag/vimtex",

  -- {
  -- this plugin must lazyload, it's so slow
  -- "xuhdev/vim-latex-live-preview",
  -- ft = "tex",
  -- },
  -- {
  --   "michaelb/sniprun",
  --   run = "bash ./install.sh",
  -- },
  -- https://github.com/VonHeikemen/lsp-zero.nvim/wiki/Under-the-hood
  -- this lsp-zero recommended to read
  "neovim/nvim-lspconfig",
  "folke/which-key.nvim",
  "oeyoews/rnvimr",
  "cappyzawa/trim.nvim",
  -- this lazy load can't work, when directly open markdown file
  -- need this @ref: https://github.com/wbthomason/packer.nvim/issues/892
  -- note: this cmd can't use mapping
  -- bug: for lua or py have bug
  -- is conflict to lsp
  "thinca/vim-quickrun",
  "phaazon/hop.nvim",
  "jose-elias-alvarez/null-ls.nvim",
  "glepnir/lspsaga.nvim",
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim",
  -- TODO:use tabnew to update plugin, to solve cannot async
  "wbthomason/packer.nvim",
  "nvim-lua/plenary.nvim",
  -- bug 1.tex, this order is wrong
  "kyazdani42/nvim-web-devicons",
  "stevearc/dressing.nvim",
  "j-hui/fidget.nvim",
  "folke/lua-dev.nvim",
  "folke/trouble.nvim",
  {
    "ziontee113/icon-picker.nvim",
    -- bind this key, to load this by hand
    keys = {
      "<space>ie",
    }, -- normal
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
    config = [[require("modules.ui.indent")]],
  },
  -- bufferline
  "akinsho/bufferline.nvim",
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
  -- this dir should not modified by user
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
      "SirVer/ultisnips",
      "honza/vim-snippets",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      -- "kdheepak/cmp-latex-symbols",
      -- completion
      -- {
      --   "tzachar/cmp-tabnine",
      --   run = "./install.sh",
      -- },
      -- "hrsh7th/cmp-copilot",
      -- "github/copilot.vim",
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
    },
  },
  {
    "lewis6991/gitsigns.nvim",
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
    -- when update plugins with packer, this cmp's tab will conflict tabout
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
  -- a alien
  -- TODO: add uncertain code and to bind this code mapping
  -- have a delay for highlight
  -- add modified time in inject meta
  -- actually, all most plugin not need lazyload, even it very slow, this neorg is lazyload itself, lazyload it is unmeanthingfun
  -- bug: inject header second will cover description or options
  {
    "nvim-neorg/neorg",
    opt = true,
  },
  -- markdown
  -- TODO: remove the map
  {
    "dhruvasagar/vim-table-mode",
    opt = true,
  },
  -- bug: should for md load
  {
    "ekickx/clipboard-image.nvim",
    opt = true,
  },
  {
    "iamcco/markdown-preview.nvim",
    opt = true,
    run = "cd app && npm install",
  },
  -- builtin
  oeyoews.builtin_plugin,
}

--   mappings
vim.keymap.set("n", "<space>fp", function()
  return oeyoews.find_lua_file("lua/modules/utils/pluginlist")
end, { desc = " pluginlist" })
