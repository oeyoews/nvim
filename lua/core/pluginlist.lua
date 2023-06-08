-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   pluginlist.lua                                                           --
--                                                                            --
--   By: oeyoews <mail>                                                       --
--                                                                            --
--   Created: 2023/01/12 21:24:23 by oeyoews                                  --
--   Updated: 2023/06/08 09:20:35 by oeyoews                                  --
-- -------------------------------------------------------------------------- --

local builtinDir = vim.fn.stdpath("config") .. "/builtin/"

oeyoews.pluginlist = {
  {
    "folke/noice.nvim",
    enabled = false,
    config = function()
      require("noice").setup({
        -- add any options here
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
    event = "BufRead",
  },
  {
    "gaoDean/autolist.nvim",
    ft = {
      "markdown",
      "text",
      "tex",
      "plaintex",
    },
    event = "VeryLazy",
    config = function()
      require("modules.tools.autolist")
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
    enabled = false,
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
  {
    "ggandor/leap.nvim",
    event = "VeryLazy",
    config = function()
      require("leap").add_default_mappings()
    end,
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
    "folke/trouble.nvim",
    keys = {
      "<space>tt",
    },
    enabled = false,
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
    enabled = true,
    config = function()
      require("neogen").setup()
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = true,
    config = function()
      require("modules.ui.indent")
    end,
  },
  {
    "akinsho/bufferline.nvim",
    enabled = true,
    config = function()
      require("modules.ui.bufferline")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter", -- nvim-treesitter bug: checkhealth nvim-treesitter, and execute tsinstall! vim
    -- commit= "e54c8873ef964c730af451fedd4490166d335e3a",
    build = ":TSUpdate",
    config = function()
      require("modules.ui.treesitter")
    end,
    dependencies = {
      "p00f/nvim-ts-rainbow",
      "nvim-treesitter/nvim-treesitter-refactor",
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
      "honza/vim-snippets",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "folke/neodev.nvim",
      -- css but tailwindcss
      "jcha0713/cmp-tw2css",
    },
    config = function()
      require("modules.langs.cmp")
    end,
  },
  "SirVer/ultisnips",
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("modules.langs.lspconfig")
    end,
  },
  {
    "folke/todo-comments.nvim",
    enabled = false,
    config = function()
      require("todo-comments").setup()
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
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
    enabled = false,
    -- config = [[vim.g.startuptime_event_width = 30]],
  },
  {
    "ekickx/clipboard-image.nvim",
    enabled = false,
    ft = "markdown",
    cmd = "PastImg",
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
    "Bryley/neoai.nvim",
    enabled = false,
    config = function()
      require("neoai").setup({})
    end,
  },
  {
    "jackMort/ChatGPT.nvim",
    enabled = false,
    config = function()
      require("chatgpt").setup({
        keymaps = {
          submit = "<C-s>",
        },
      })
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
    "jcdickinson/codeium.nvim",
    pin = false,
    enabled = false,
    config = function()
      require("codeium").setup({})
    end,
  },
  {
    "Exafunction/codeium.vim",
    enabled = true,
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set("i", "<C-y>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
    end,
  },
  {
    "gen740/SmoothCursor.nvim",
    enabled = false,
    config = function()
      require("smoothcursor").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    -- version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  {
    "Wansmer/treesj",
    enabled = false,
    keys = { "<space>m", "<space>j", "<space>s" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({ --[[ your config ]]
      })
    end,
  },
  "haringsrob/nvim_context_vt",
}

-- autoload on loading this pluginlist variable
vim.keymap.set("n", "<space>fp", function()
  return oeyoews.find_lua_file("lua/core/pluginlist")
end, { desc = " pluginlist" })
