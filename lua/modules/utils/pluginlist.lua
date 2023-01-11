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
 "rcarriga/nvim-notify",
 "uga-rosa/ccc.nvim",
 "glepnir/lspsaga.nvim",
 "gaoDean/autolist.nvim",
 "nguyenvukhang/nvim-toggler",
 "lervag/vimtex", -- not support lazyload
 "neovim/nvim-lspconfig",
 {
 "folke/which-key.nvim",
 config = [[require("modules.tools.whichkey")]],
 },
 "oeyoews/rnvimr",
 "cappyzawa/trim.nvim",
 "thinca/vim-quickrun",
 "sukima/vim-tiddlywiki", -- note: this maybe can't load be web browser
 "phaazon/hop.nvim",
 "nathom/filetype.nvim", -- conflict with c filetypes
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
 {
 "akinsho/bufferline.nvim",
 config = [[require("modules.ui.bufferline")]],
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
}

--  mappings
vim.keymap.set("n", "<space>fp", function()
  return oeyoews.find_lua_file("lua/modules/utils/pluginlist")
end, { desc = " pluginlist" })
