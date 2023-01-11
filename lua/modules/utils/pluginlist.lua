-- packerload is from this list load, if no add config for lazyload, it still not work,
-- so better method is use ftplugin for some
-- filetypes plugins
-- plugins list
oeyoews.pluginlist = {
  {
    "lewis6991/impatient.nvim",
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  "nvim-tree/nvim-tree.lua",
  {
  "rcarriga/nvim-notify",
  config = function()
    require("modules.ui.notify")
  end,
  },
  "uga-rosa/ccc.nvim",
  "glepnir/lspsaga.nvim",
  "gaoDean/autolist.nvim",
  {
    "nguyenvukhang/nvim-toggler",
    config = function()
      require("modules.tools.toggler")
    end,
  },
  "lervag/vimtex", -- not support lazyload
  {
    "folke/which-key.nvim",
    config = function() 
      require("modules.tools.whichkey")
    end,
  },
  {
    "oeyoews/rnvimr", -- false
    lazy = false,
    config = function()
      require("modules.tools.ranger")
    end,
  },
  "cappyzawa/trim.nvim",
  "thinca/vim-quickrun",
  {
    "sukima/vim-tiddlywiki", -- note: this maybe can't load be web browser
    ft = "tiddlywiki",
  },
  {
  "phaazon/hop.nvim",
  config = function()
    require("modules.tools.hop")
  end
  },
  {
   "nathom/filetype.nvim", -- conflict with c filetypes

   config = function()
     require("modules.tools.filetype")
   end
  
  },
  "nvim-lua/plenary.nvim",
  "kyazdani42/nvim-web-devicons",
  -- "j-hui/fidget.nvim",
  "folke/neodev.nvim",
  "folke/trouble.nvim",
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy"
  },
  {
    "ziontee113/icon-picker.nvim",
    lazy = true,
    keys = {
      "<Space>ie",
    },
    cmd = "PickEmoji",
    config = function()
      oeyoews.lazyload.emoji()
    end,
  },
  {
    "danymat/neogen",
    cmd = "Neogen",
    config = function() 
      require("neogen").setup()
    end
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("modules.ui.indent")
    end
  },
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("modules.ui.bufferline")
     end
  },
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
    config = function() 
      require("modules.langs.mason")
    end
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
    end,
  },
      {
        "neovim/nvim-lspconfig",
        -- config = [[require("modules.langs.lspconfig")]],
      },
  {
    "folke/todo-comments.nvim",
    config = function() 
      require("todo-comments").setup()
    end
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
    cmd = "StartupTime",
    -- config = [[vim.g.startuptime_event_width = 30]],
  },
  {
    "nvim-neorg/neorg",
    ft = "norg",
    config = true
  },
  {
    "ekickx/clipboard-image.nvim",
    lazy = true
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
  },
  {
    "oeyoews/header42",
    dev = true,
    config = [[require("modules.tools.header42")]],
  },
  {
    "oeyoews/lspformat",
    dev = true,
    config = [[require("modules.tools.header42")]],
  },
  {
    "oeyoews/persistence",
    dev = true,
    config = [[require("modules.tools.persistence")]],
  },
  {
    "oeyoews/telescope",
    dev = true,
  },
  {
    "barrett-ruth/live-server.nvim",
    build = 'yarn global add live-server',
    config = true,
  },
  {
    "nvim-lualine/lualine.nvim",
    config = [[require("lualine").setup()]]
  }
}

--  mappings
vim.keymap.set("n", "<space>fp", function()
  return oeyoews.find_lua_file("lua/modules/utils/pluginlist")
end, { desc = " pluginlist" })
