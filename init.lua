-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2023/01/11 13:49:25 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- just for linux, and no mac no test, so just support linux
if vim.fn.has("linux") ~= 1 then
  vim.notify_once("Please use neovim in Linux ENV")
  return
end

require("impatient")

require("modules.utils.oeyoews")
require("modules.utils.mappings")
require("modules.utils.options")
require("modules.utils.disable")


-- --  load modules
-- pcall2.setup(modules, files)

--- autolist
require("autolist").setup()

require("lspsaga")

--[=[
local peek = require("peek")

vim.api.nvim_create_user_command("PeekOpen", function()
  if not peek.is_open() and vim.bo[vim.api.nvim_get_current_buf()].filetype == "markdown" then
    -- vim.fn.system("i3-msg split horizontal")
    peek.open()
  end
end, {})

vim.api.nvim_create_user_command("PeekClose", function()
  if peek.is_open() then
    peek.close()
    -- vim.fn.system("i3-msg move left")
  end
end, {}) --]=]

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = {
  "nvim-tree/nvim-tree.lua",
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  "rcarriga/nvim-notify",
  "uga-rosa/ccc.nvim",
  "glepnir/lspsaga.nvim",
  "gaoDean/autolist.nvim",
  "nguyenvukhang/nvim-toggler",
  "lervag/vimtex", -- not support lazyload
  "neovim/nvim-lspconfig",
  {
  "folke/which-key.nvim",
  config = require("modules.tools.whichkey")
  },
  "oeyoews/rnvimr",
  "cappyzawa/trim.nvim",
  "thinca/vim-quickrun",
  "sukima/vim-tiddlywiki", -- note: this maybe can't load be web browser
  "phaazon/hop.nvim",
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim", -- conflict with c filetypes
  "nvim-lua/plenary.nvim",
  "kyazdani42/nvim-web-devicons",
  -- "j-hui/fidget.nvim",
  "folke/neodev.nvim",
  "folke/trouble.nvim",
  { "stevearc/dressing.nvim", event = "VeryLazy" },
  {
    "ziontee113/icon-picker.nvim",
    keys = {
      "<Space>ie",
    },
    config = [[oeyoews.lazyload.emoji()]],
  },
  {
    "danymat/neogen",
    cmd = "Neogen",
    config = [[require("neogen").setup()]],
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = [[require("modules.ui.indent")]],
  },
  "akinsho/bufferline.nvim",
  {
    "nvim-treesitter/nvim-treesitter", -- nvim-treesitter bug: checkhealth nvim-treesitter, and execute tsinstall! vim
    run = ":TSUpdate",
    dependencies = {
      "p00f/nvim-ts-rainbow",
      "nvim-treesitter/nvim-treesitter-refactor",
    },
  },
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      "jose-elias-alvarez/null-ls.nvim",
      "jayp0521/mason-null-ls.nvim",
    },
  },
  {
    "hrsh7th/nvim-cmp",
  event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "quangnguyen30192/cmp-nvim-ultisnips",
      "hrsh7th/cmp-buffer",
      "SirVer/ultisnips",
      "honza/vim-snippets",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
    },
    config = function()
       require("modules.langs.cmp")
       require("modules.langs.lspconfig")
    end,
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
    -- config = function()
    --   oeyoews.lazyload.gitsigns()
    -- end,
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
    -- config = [[require("tabout").setup()]],
  },
  {
    "oeyoews/nvim-colorizer.lua",
    cmd = "ColorizerToggle",
    config = [[require("colorizer").setup()]],
  },
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
    -- config = [[vim.g.startuptime_event_width = 30]],
  },
    "nvim-neorg/neorg",
  {
    "ekickx/clipboard-image.nvim",
  },
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   run = "cd app && npm install",
  -- },
}
require("lazy").setup(plugins)
