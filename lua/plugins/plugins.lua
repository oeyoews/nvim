-- @FileName: init.lua
-- @Description: packer plugin list

local packer_ok, packer = pcall(require, "packer")

if not packer_ok then
  vim.notify("packer not founded")
  return
end

local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

local util = require("packer.util")

local plugins = {
  -- @Manager
  "wbthomason/packer.nvim",

  -- @Necessary
  -- fixme: filetype need in impatient after to fix treesitter install times
  "MunifTanjim/nui.nvim",
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim",
  "rcarriga/nvim-notify",
  "kyazdani42/nvim-web-devicons",
  "nvim-lua/plenary.nvim",

  -- @Temporary
  "lewis6991/spellsitter.nvim",

  -- @Ui
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  },

  -- @Treesitter
  "nvim-treesitter/nvim-treesitter-refactor",
  "nvim-treesitter/nvim-treesitter-context",
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
      "hrsh7th/cmp-emoji",
    },
  },

  -- @Lspconfig
  "williamboman/nvim-lsp-installer",
  {
    "neovim/nvim-lspconfig",
    requires = {
      "tami5/lspsaga.nvim",
      "lukas-reineke/lsp-format.nvim",
      "ray-x/lsp_signature.nvim",
      "jose-elias-alvarez/null-ls.nvim",
      "j-hui/fidget.nvim",
      "p00f/clangd_extensions.nvim", -- TODO config it after finish lsp config
      {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
      },
    },
  },

  -- @Tools
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
  },
  "fhill2/telescope-ultisnips.nvim",
  "akinsho/toggleterm.nvim",
  "andymass/vim-matchup",
  "mg979/vim-visual-multi",
  "tpope/vim-surround",
  "abecodes/tabout.nvim",
  "nvim-neorg/neorg",
  "ekickx/clipboard-image.nvim",
  "Pocco81/HighStr.nvim",
  "yianwillis/vimcdoc",
  "folke/which-key.nvim",
  "nvim-telescope/telescope.nvim",
  "phaazon/hop.nvim",
  "numToStr/Comment.nvim",
  "folke/persistence.nvim",
  "folke/todo-comments.nvim",
  "lewis6991/gitsigns.nvim",
  "windwp/nvim-autopairs",
  {
    "iamcco/markdown-preview.nvim",
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "dstein64/vim-startuptime",
    commit = "61f122ebc41e9bcf1793c752a728db59feee77bb",
  },
  {
    "kevinhwang91/rnvimr",
    cmd = "RnvimrToggle",
  },
  {
    "itchyny/calendar.vim",
    cmd = "Calendar",
  },
  {
    "thinca/vim-quickrun",
    cmd = "QuickRun",
  },
}

-- @Packer
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  vim.cmd("packadd packer.nvim")
end

packer.init({
  config = {
    profile = {
      enable = true,
      threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    },
  },
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "double" })
    end,
  },
  git = {
    clone_timeout = 6000,
  },
  autoremove = false,
  compile_path = util.join_paths(vim.fn.stdpath("data"), "compile", "packer_compiled.lua"),
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
  nnoremap <silent> <leader>so <cmd>luafile %<cr> :lua vim.notify("reload current file")<cr>
  nnoremap <silent> <leader>sO <cmd>luafile ~/.config/nvim/lua/plugins/plugins.lua<cr> :lua vim.notify("reload packer file")<cr>
]])

-- {
--   "rcarriga/vim-ultest",
--   requires = { "vim-test/vim-test" },
--   run = ":UpdateRemotePlugins"
-- },
-- "gfeiyou/command-center.nvim",
-- "ggandor/lightspeed.nvim",
