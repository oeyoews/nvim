-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   pluginlist.lua                                                           --
--                                                                            --
--   By: oeyoews <mail>                                                       --
--                                                                            --
--   Created: 2023/01/12 21:24:23 by oeyoews                                  --
--   Updated: 2023/08/21 11:37:34 by oeyoews                                  --
-- -------------------------------------------------------------------------- --

local builtinDir = vim.fn.stdpath("config") .. "/builtin/"

oeyoews.pluginlist = {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          -- default options: exact mode, multi window, all directions, with a backdrop
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "o", "x" },
        function()
          -- show labeled treesitter nodes around the cursor
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          -- jump to a remote location to execute the operator
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "n", "o", "x" },
        function()
          -- show labeled treesitter nodes around the search matches
          require("flash").treesitter_search()
        end,
        desc = "Treesitter Search",
      },
    },
  },
  -- "eandrju/cellular-automaton.nvim",
  {
    "nvim-neorg/neorg",
    enabled = false,
    build = ":Neorg sync-parsers",
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
            },
          }, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/neorg/notes",
              },
            },
          },
        },
      })
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
    event = "VeryLazy",
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
    "nvimdev/lspsaga.nvim",
    enabled = true,
    config = function()
      require("modules.langs.lspsaga")
    end,
    event = "BufRead",
  },
  {
    "gaoDean/autolist.nvim",
    ft = {
      "markdown",
    },
    config = function()
      require("autolist").setup()

      vim.keymap.set("i", "<tab>", "<cmd>AutolistTab<cr>")
      vim.keymap.set("i", "<s-tab>", "<cmd>AutolistShiftTab<cr>")
      vim.keymap.set("i", "<CR>", "<CR><cmd>AutolistNewBullet<cr>")
      vim.keymap.set("n", "o", "o<cmd>AutolistNewBullet<cr>")
      vim.keymap.set("n", "O", "O<cmd>AutolistNewBulletBefore<cr>")
      vim.keymap.set("n", "<CR>", "<cmd>AutolistToggleCheckbox<cr><CR>")
      vim.keymap.set("n", "<C-r>", "<cmd>AutolistRecalculate<cr>")

      -- cycle list types with dot-repeat
      vim.keymap.set("n", "<leader>cn", require("autolist").cycle_next_dr, { expr = true })
      vim.keymap.set("n", "<leader>cp", require("autolist").cycle_prev_dr, { expr = true })

      -- if you don't want dot-repeat
      -- vim.keymap.set("n", "<leader>cn", "<cmd>AutolistCycleNext<cr>")
      -- vim.keymap.set("n", "<leader>cp", "<cmd>AutolistCycleNext<cr>")

      -- functions to recalculate list on edit
      vim.keymap.set("n", ">>", ">><cmd>AutolistRecalculate<cr>")
      vim.keymap.set("n", "<<", "<<<cmd>AutolistRecalculate<cr>")
      vim.keymap.set("n", "dd", "dd<cmd>AutolistRecalculate<cr>")
      vim.keymap.set("v", "d", "d<cmd>AutolistRecalculate<cr>")
    end,
  },
  {
    "nguyenvukhang/nvim-toggler",
    event = "VeryLazy",
    config = function()
      require("modules.tools.toggler")
    end,
  },
  {
    "lervag/vimtex", -- not support lazyload
    ft = "tex",
    enabled = false,
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
    enabled = true,
    cmd = "RnvimrToggle",
    keys = {
      "<Space>ft",
    },
    config = function()
      require("modules.tools.ranger")
    end,
  },
  {
    "kelly-lin/ranger.nvim",
    enabled = false, -- 不支持ranger 的一些操作
    config = function()
      require("ranger-nvim").setup({ replace_netrw = true })
      vim.api.nvim_set_keymap("n", "<leader>ft", "", {
        noremap = true,
        callback = function()
          require("ranger-nvim").open(true)
        end,
      })
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
    lazy = true,
    ft = "tiddlywiki",
  },
  "nvim-lua/plenary.nvim",
  "MunifTanjim/nui.nvim",
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("modules.ui.web_icons")
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
    enabled = true,
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
    -- commit= "e54c8873ef964c730af451fedd4490166d335e3a",
    build = ":TSUpdate",
    pin = true,
    config = function()
      require("modules.ui.treesitter")
    end,
    dependencies = {
      "windwp/nvim-ts-autotag",
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
    event = "VeryLazy",
    dependencies = {
      "quangnguyen30192/cmp-nvim-ultisnips",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "jcha0713/cmp-tw2css",
    },

    config = function()
      require("modules.langs.cmp")
    end,
  },
  {
    "folke/neodev.nvim",
    config = function()
      require("neodev").setup({})
    end,
  },
  "SirVer/ultisnips",
  "honza/vim-snippets",
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("modules.langs.lspconfig")
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("modules.tools.telescope")
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = function()
      oeyoews.lazyload.gitsigns()
    end,
  },
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    config = function()
      require("modules.tools.comment")
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = [[require("nvim-autopairs").setup()]],
  },
  {
    "oeyoews/nvim-colorizer.lua",
    ft = {
      "css",
      "html",
    },
    cmd = "ColorizerToggle",
    config = [[require("colorizer").setup()]],
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
    event = "InsertEnter",
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
    enabled = true,
    lazy = true,
    cmd = "LiveServerStart",
    ft = "html", -- not work ???
    config = true,
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("modules.tools.lualine")
    end,
  },
  {
    "themaxmarchuk/tailwindcss-colors.nvim",
    enabled = true,
    config = function()
      require("tailwindcss-colors").setup()
    end,
  },
  {
    "Exafunction/codeium.vim",
    pin = true,
    enabled = true,
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set("i", "<C-y>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
    end,
  },
  {
    "kylechui/nvim-surround",
    -- version = "*", -- Use for stability; omit to use `main` branch for the latest features
    enabled = false,
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },
}

-- autoload on loading this pluginlist variable
vim.keymap.set("n", "<space>fp", function()
  return oeyoews.find_lua_file("lua/core/pluginlist")
end, { desc = " pluginlist" })
