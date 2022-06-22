-- @FileName: plugins.lua

local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

local plugins = {
  -- @NeovimManager
  "wbthomason/packer.nvim",

  -- @Necessary
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim",
  "rcarriga/nvim-notify",
  "kyazdani42/nvim-web-devicons",
  "nvim-lua/plenary.nvim",
  "stevearc/dressing.nvim",

  -- @Temporary
  "ziontee113/icon-picker.nvim", -- require dressing.nvim

  -- @Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  },
  "nvim-treesitter/nvim-treesitter-refactor",
  "p00f/nvim-ts-rainbow",
  "norcalli/nvim-colorizer.lua",
  "oeyoews/windline.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "akinsho/bufferline.nvim",
  "windwp/nvim-ts-autotag",

  -- @Completion
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
      "fhill2/telescope-ultisnips.nvim",
      "oeyoews/tabout.nvim",
      "numToStr/Comment.nvim",
    },
  },

  -- @Lspconfig
  "williamboman/nvim-lsp-installer",
  {
    "neovim/nvim-lspconfig",
    requires = {
      "tami5/lspsaga.nvim",
      "lukas-reineke/lsp-format.nvim",
    },
  },

  -- @Tools
  "akinsho/toggleterm.nvim",
  "nvim-neorg/neorg",
  "ekickx/clipboard-image.nvim",
  "Pocco81/HighStr.nvim",
  "folke/which-key.nvim",
  "nvim-telescope/telescope.nvim",
  "phaazon/hop.nvim",
  "folke/persistence.nvim",
  "folke/todo-comments.nvim",
  "lewis6991/gitsigns.nvim",
  "windwp/nvim-autopairs",
  "oeyoews/vim-startuptime",
  "kevinhwang91/rnvimr",
  "itchyny/calendar.vim",
  "thinca/vim-quickrun",
}

-- @PackerSettings
-- autoomatically install packer
if fn.empty(fn.glob(install_path)) > 0 then
  print("Cloning packer ... waiting")
  packer_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  vim.cmd("packadd packer.nvim")
  vim.notify("Finish install packer")
end

local packer_ok, packer = pcall(require, "packer")

if not packer_ok then
  vim.notify("packer not founded")
  return
end

local util = require("packer.util")

packer.init({
  config = {
    profile = {
      enable = true,
      threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    },
  },
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "single" })
    end,
  },
  git = {
    clone_timeout = 6000,
    --@Mirror_packer
    -- default_url_format = 'https://github.com/%s.git',
    -- default_url_format = 'https://hub.fastgit.xyz/%s.git',
  },
  autoremove = true,
  compile_path = util.join_paths(fn.stdpath("data"), "compile", "packer_compiled.lua"),
})

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

  -- automatically install missing plugin(s) on startup
  packer.install()

  -- automatically packer_compiled on startup
  packer.compile()
end)

vim.cmd([[
  nnoremap <Leader>vc <Cmd>PackerClean<CR>
  nnoremap <Leader>vi <Cmd>PackerInstall<cr>
  nnoremap <Leader>vs <Cmd>PackerSync<CR>
  nnoremap <Leader>vU <Cmd>PackerCompile<CR>
  nnoremap <silent> <leader>so <cmd>so % <bar> lua vim.notify("reload current file")<cr>
  nnoremap <silent> <leader>sO <cmd>so ~/.config/nvim/lua/plugins/plugins.lua <bar> lua vim.notify("reload packer file")<cr>

]])
