local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  vim.cmd "packadd packer.nvim"
end

local ok, packer = pcall(require, "packer")

if not ok then
  vim.notify "packer not founded"
  return false
end

local util = require "packer.util"

local plugins = {
  "wbthomason/packer.nvim",
  -- @Perfect
  -- FIXME: filetype need in impatient after to fix treesitter install times
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim",
  "rcarriga/nvim-notify",
  "kyazdani42/nvim-web-devicons",
  "nvim-lua/plenary.nvim",

  -- # Temporary
  "lewis6991/spellsitter.nvim",
  -- #Ui
  {
    "nvim-treesitter/nvim-treesitter",
    -- cmd = { "TSInstall", "TSUpdate", "TSUninstall", },
    run = ":TSUpdate",
    requires = {
      "p00f/nvim-ts-rainbow",
    },
  },
  "norcalli/nvim-colorizer.lua",
  "windwp/windline.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "akinsho/bufferline.nvim",
  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "xml" },
  },

  -- @LSP
  "williamboman/nvim-lsp-installer",
  {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "onsails/lspkind-nvim",
      "hrsh7th/cmp-path",
      "honza/vim-snippets",
      "SirVer/ultisnips",
      "quangnguyen30192/cmp-nvim-ultisnips",
      {
        "hrsh7th/cmp-emoji",
        ft = "markdown",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    requires = {
      "tami5/lspsaga.nvim",
      "lukas-reineke/lsp-format.nvim",
      "ray-x/lsp_signature.nvim",
      "jose-elias-alvarez/null-ls.nvim",
      "j-hui/fidget.nvim",
    },
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  -- @Tools
  "abecodes/tabout.nvim",
  {
    "nvim-neorg/neorg",
    -- ft = 'norg'
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = "MarkdownPreview",
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  -- 'b0o/incline.nvim',
  {
    "ekickx/clipboard-image.nvim",
    ft = "markdown",
  },
  "Pocco81/HighStr.nvim",
  {
    "itchyny/calendar.vim",
    cmd = "Calendar",
  },
  "yianwillis/vimcdoc",
  "folke/which-key.nvim",
  {
    "nvim-telescope/telescope.nvim",
    -- command will cause some order mass, can't recognize this plugin
    -- cmd = 'Telescope',
  },
  "phaazon/hop.nvim",
  "kyazdani42/nvim-tree.lua",
  {
    "dstein64/vim-startuptime",
    commit = "61f122ebc41e9bcf1793c752a728db59feee77bb",
  },
  "kevinhwang91/rnvimr",
  "numToStr/Comment.nvim",
  "folke/persistence.nvim",
  "folke/todo-comments.nvim",
  "lewis6991/gitsigns.nvim",
  {
    "windwp/nvim-autopairs",
  },
  {
    "thinca/vim-quickrun",
    cmd = "QuickRun",
  },
}

packer.init {
  config = {
    profile = {
      enable = true,
      threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    },
  },
  display = {
    open_fn = function()
      return require("packer.util").float { border = "double" }
    end,
  },
  git = {
    clone_timeout = 6000,
  },
  autoremove = false,
  compile_path = util.join_paths(vim.fn.stdpath "data", "compile", "packer_compiled.lua"),
}

packer.startup(function(use)
  for _, plugin in pairs(plugins) do
    use(plugin)
  end

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    if packer.config.compile_path then
      os.remove(packer.config.compile_path)
    end
    packer.sync()
  end

  -- automatically install missing plugin(s)
  packer.install()

  -- automatically packer_compiled on startup
  vim.cmd [[PackerCompile]]
end)

vim.cmd [[
nnoremap <Leader>vc <Cmd>PackerClean<CR>
nnoremap <Leader>vi <Cmd>PackerInstall<cr>
nnoremap <Leader>vs <Cmd>PackerSync<CR>
nnoremap <Leader>vU <Cmd>PackerCompile<CR>
]]
