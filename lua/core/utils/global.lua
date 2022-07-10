-- nvim [_G] global variables
local M = {}

-- init oeyoews table
oeyoews = {}

-- @options
oeyoews.options = {
  enable_cmdheight = false, -- util 22/07/11, it's still have some bug
  enable_lsp = true, -- @see lspconfig.lua
  sumneko_lua_locale_cn = false, -- @see lspconfig.lua
  toggle_theme_auto = true, -- @see sta.lua
  debug_mode = true, -- @ref: user.pcall.lua
  -- rolling.json default.json v1.0.0.json
  snapshot = nil, -- @see bootstrap.lua
  -- snapshot = "default.json", -- @ref: core.utils.bootstrap
}

-- @servers
oeyoews.servers = {
  "sumneko_lua",
  "jsonls", -- need install shellcheck(it dependency some haskell package, download aur's bin is fast), if lsp not work, please check :LspLog to see more information
  "clangd", -- warn: don't modify this position or table order, unless use table self sort method to solve it
  -- "pylsp", -- support formatting
  -- "jdtls", -- java
  -- "gopls", -- config in lspinstall, don't write it here
  -- "volar", -- vue
  -- "rust_analyzer", -- need use rustup to install stable rust and setup toolchains
  -- "solargraph", -- ruby
  -- "bashls",
  "vimls",
  -- "cmake",
  -- "cssls",
  -- "yamlls",
  -- "html",
  -- "tsserver", -- must in folder
  -- "taplo", -- toml
  -- "hls",
  -- "eslint",
  -- 'golangci_lint_ls',
}

-- @parsers
oeyoews.parsers = {
  "c",
  "cmake",
  "bash",
  "json",
  "jsonc",
  "json5",
  "java",
  "javascript",
  "lua",
  "vim",
  "yaml",
  "toml",
  "python",
  "go",
  "make",
  "gomod",
  "markdown",
  "markdown_inline",
  "css",
  "html",
  "rust",
  "comment", -- support @ highlight in comments
  "vue",
  "org",
  "norg",
  "help",
}

-- @pluginlist
oeyoews.pluginlist = {
  -- @luaversion: 5.1
  "SmiteshP/nvim-navic",
  "folke/lua-dev.nvim",
  "mhartington/formatter.nvim",
  "mzlogin/vim-markdown-toc",
  "danymat/neogen",
  -- @dependencies
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim",
  "wbthomason/packer.nvim",
  "nvim-lua/plenary.nvim",
  "kyazdani42/nvim-web-devicons",
  "stevearc/dressing.nvim",

  -- @ORDER
  "lukas-reineke/indent-blankline.nvim",
  "akinsho/bufferline.nvim",
  "oeyoews/windline.nvim",

  -- @LANG
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    requires = {
      "nvim-treesitter/nvim-treesitter-refactor",
      "p00f/nvim-ts-rainbow",
    },
  },
  "williamboman/nvim-lsp-installer",
  {
    "hrsh7th/nvim-cmp",
    requires = {
      "quangnguyen30192/cmp-nvim-ultisnips",
      "hrsh7th/cmp-buffer",
    },
  },
  "neovim/nvim-lspconfig",
  "jose-elias-alvarez/null-ls.nvim",
  "kkharji/lspsaga.nvim",
  "honza/vim-snippets",
  "SirVer/ultisnips",
  "hrsh7th/cmp-nvim-lsp",
  "onsails/lspkind-nvim",
  "hrsh7th/cmp-path",

  -- @TOOLS
  "folke/todo-comments.nvim",
  {
    "nvim-telescope/telescope.nvim",
    requires = {
      "nvim-telescope/telescope-packer.nvim",
    },
  },
  "phaazon/hop.nvim",
  "norcalli/nvim-colorizer.lua",
  "lewis6991/gitsigns.nvim",
  "numToStr/Comment.nvim",
  "windwp/nvim-autopairs",
  "folke/persistence.nvim",
  "oeyoews/tabout.nvim",
  "folke/which-key.nvim",
  "ziontee113/icon-picker.nvim",
  "j-hui/fidget.nvim",
  "kevinhwang91/rnvimr",
  "cappyzawa/trim.nvim",
  "ekickx/clipboard-image.nvim",
  "thinca/vim-quickrun",
  "oeyoews/vim-startuptime",
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
  },
}

-- @functions
oeyoews.lsp = function()
  local opt = table.concat(oeyoews.servers, "   ")
  print(opt)
end

return M