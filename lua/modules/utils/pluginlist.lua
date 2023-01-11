oeyoews.pluginlist = {
  {
    "lewis6991/impatient.nvim",
    config = function()
      require("impatient")
    end,
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("modules.ui.nvim_tree")
    end,
  },
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
  {
    "lervag/vimtex", -- not support lazyload
    ft = "tex",
    lazy = true,
    -- TODO:
    -- config = function()
    --   require("modules.tools.vimtex")
    -- end,
  },
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
  {
    "cappyzawa/trim.nvim",
    config = function()
      require("modules.tools.trim")
    end,
  },
  "thinca/vim-quickrun",
  {
    "sukima/vim-tiddlywiki", -- note: this maybe can't load be web browser
    ft = "tiddlywiki",
  },
  {
    "phaazon/hop.nvim",
    config = function()
      require("modules.tools.hop")
    end,
  },
  {
    "nathom/filetype.nvim", -- conflict with c filetypes

    config = function()
      require("modules.tools.filetype")
    end,
  },
  "nvim-lua/plenary.nvim",
  {
    "kyazdani42/nvim-web-devicons",
    config = function()
      require("modules.ui.web_icons")
    end,
  },
  -- "j-hui/fidget.nvim",
  "folke/neodev.nvim",
  {
    "folke/trouble.nvim",
    config = function()
      require("modules.tools.trouble")
    end,
  },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
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
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("modules.ui.indent")
    end,
  },
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("modules.ui.bufferline")
    end,
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
      require("modules.langs.null-ls")
      require("modules.langs.mason-null-ls")
    end,
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
    config = function()
      require("modules.langs.lspconfig")
    end,
  },
  {
    "folke/todo-comments.nvim",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("modules.tools.telescope")
    end,
    requires = {
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
    config = function()
      require("modules.tools.comment")
    end,
  },
  {
    "windwp/nvim-autopairs",
    config = [[require("nvim-autopairs").setup()]],
  },
  -- TODO
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
    config = function()
      require("modules.tools.neorg")
    end,
  },
  {
    "ekickx/clipboard-image.nvim",
    lazy = true,
  },
  {
    "iamcco/markdown-preview.nvim",
    lazy = true,
    ft = "markdown",
    cmd = "MarkdownPreivew",
    build = "cd app && npm install", -- sometime you need execute this cmd manually
  },
  {
    "oeyoews/header42",
    dev = true,
    config = [[require("modules.tools.header42")]],
  },
  {
    "lukas-reineke/lsp-format.nvim",
    config = function()
      require("lsp-format").setup()
    end,
  },
  {
    "oeyoews/persistence",
    dev = true,
    config = function()
      require("modules.tools.persistence")
    end,
  },
  {
    "oeyoews/telescope",
    dev = true,
  },
  {
    "barrett-ruth/live-server.nvim",
    build = "yarn global add live-server",
    config = true,
  },
  {
    "nvim-lualine/lualine.nvim",
    config = [[require("lualine").setup()]],
  },
}

--  mappings
-- autoload on loading this pluginlist variable
vim.keymap.set("n", "<space>fp", function()
  return oeyoews.find_lua_file("lua/modules/utils/pluginlist")
end, { desc = " pluginlist" })
