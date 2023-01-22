-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   pluginlist.lua                                                           --
--                                                                            --
--   By: oeyoews <mail>                                                       --
--                                                                            --
--   Created: 2023/01/12 21:24:23 by oeyoews                                  --
--   Updated: 2023/01/22 19:11:50 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

local builtinDir = vim.fn.stdpath("config") .. "/builtin/"

oeyoews.pluginlist = {
  {
    "nathom/filetype.nvim", -- conflict with c filetypes
    config = function()
      require("modules.tools.filetype")
    end,
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      require("modules.ui.ui")
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = true,
    cmd = "NvimTreeOpen",
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
  {
    "glepnir/lspsaga.nvim",
    event = "InsertEnter",
  },
  {
    "gaoDean/autolist.nvim",
    ft = {
      "markdown",
      "text",
      "tex",
      "plaintex",
    },
    config = function()
      require("modules.tools.autolist")
    end,
  },
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
    config = function()
      require("modules.tools.vimtex")
    end,
  },
  {
    "folke/which-key.nvim",
    config = function()
      require("modules.tools.whichkey")
    end,
  },
  {
    "oeyoews/rnvimr", -- false
    lazy = true,
    cmd = "RnvimrToggle",
    keys = {
      "<Space>ft",
    },
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
  {
    "thinca/vim-quickrun",
    event = "VeryLazy",
  },
  {
    "sukima/vim-tiddlywiki", -- note: this maybe can't load be web browser
    ft = "tiddlywiki",
  },
  {
    "ggandor/leap.nvim",
    config = function()
      require("leap").add_default_mappings()
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
    build = ":TSUpdate",
    config = function()
      require("modules.ui.treesitter")
    end,
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
    "hrsh7th/cmp-nvim-lsp-signature-help",
    lazy = true,
    event = "InsertEnter",
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      {
        "oeyoews/tabout.nvim",
        config = [[require("tabout").setup()]],
      },
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
    dependencies = {
      "nvim-telescope/telescope-file-browser.nvim",
    },
    config = function()
      require("modules.tools.telescope")
    end,
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
    enabled = false,
    config = function()
      require("modules.tools.neorg")
    end,
  },
  {
    "ekickx/clipboard-image.nvim",
    ft = "markdown",
    lazy = true,
  },
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      oeyoews.lazyload.mkdp()
    end,
    lazy = true,
    ft = "markdown",
    cmd = "MarkdownPreivew",
    build = "cd app && npm install", -- sometime you need execute this cmd manually
  },
  "lukas-reineke/lsp-format.nvim",
  {
    dir = builtinDir .. "header42",
    lazy = true,
    keys = {
      "<Space>ih",
    },
    cmd = "Header",
    config = function()
      require("modules.tools.header42")
    end,
  },
  {
    dir = builtinDir .. "persistence",
    config = function()
      require("modules.tools.persistence")
    end,
  },
  {
    dir = builtinDir .. "telescope",
  },
  {
    "barrett-ruth/live-server.nvim",
    -- build = "yarn global add live-server", --TODO
    lazy = true,
    cmd = "LiveServerStart",
    ft = "html", -- not work ???
    config = true,
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        sections = {
          lualine_x = {
            {
              require("lazy.status").updates,
              cond = require("lazy.status").has_updates,
              color = { fg = "#ff9e64" },
            },
          },
        },
      })
    end,
  },
}

--  mappings
-- autoload on loading this pluginlist variable
vim.keymap.set("n", "<space>fp", function()
  return oeyoews.find_lua_file("lua/core/pluginlist")
end, { desc = " pluginlist" })
