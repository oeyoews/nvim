local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  })
end

local ok, packer = pcall(require, 'packer')

if not ok then
  vim.notify('packer not founded')
  return false
end

local plugins = {
  'wbthomason/packer.nvim',
  -- @Perfect
  -- BUG: filetype need in impatient after to fix treesitter install times
  'lewis6991/impatient.nvim',
  'nathom/filetype.nvim',
  'rcarriga/nvim-notify',
  'kyazdani42/nvim-web-devicons',
  'nvim-lua/plenary.nvim',

  -- #Ui
  {
    'nvim-treesitter/nvim-treesitter',
    -- cmd = { "TSInstall", "TSUpdate", "TSUninstall", },
    run = ":TSUpdate",
  },
  'norcalli/nvim-colorizer.lua',
  'windwp/windline.nvim',
  'lukas-reineke/indent-blankline.nvim',
  'akinsho/bufferline.nvim',
  'p00f/nvim-ts-rainbow',
  'nvim-treesitter/nvim-treesitter-refactor',
  {
    'windwp/nvim-ts-autotag',
    ft = { "html", "xml" },
  },

  -- @LSP
  'williamboman/nvim-lsp-installer',
  {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'onsails/lspkind-nvim',
      'hrsh7th/cmp-path',
      'honza/vim-snippets',
      'SirVer/ultisnips',
      'quangnguyen30192/cmp-nvim-ultisnips',
      {
        'hrsh7th/cmp-emoji',
        ft = 'markdown',
      },
    }
  },
  {
    'neovim/nvim-lspconfig',
    requires = {
      'tami5/lspsaga.nvim',
      'lukas-reineke/lsp-format.nvim',
      'ray-x/lsp_signature.nvim',
      'jose-elias-alvarez/null-ls.nvim',
      'j-hui/fidget.nvim',
    }
  },
  {
    'folke/trouble.nvim',
    cmd = 'TroubleToggle',
  },

  -- @Tools
  'abecodes/tabout.nvim',
  {
    'nvim-neorg/neorg',
    -- ft = 'norg'
  },
  {
    'iamcco/markdown-preview.nvim',
    ft = 'markdown',
    run = function() vim.fn["mkdp#util#install"]() end,
  },
  'b0o/incline.nvim',
  {
    'ekickx/clipboard-image.nvim',
    ft = 'markdown',
    cmd = 'PostImg',
  },
  'Pocco81/HighStr.nvim',
  {
    'itchyny/calendar.vim',
    cmd = 'Calendar',
  },
  'yianwillis/vimcdoc',
  'folke/which-key.nvim',
  {
    'nvim-telescope/telescope.nvim',
    -- command will cause some order mass, can't recognize this plugin
    -- cmd = 'Telescope',
  },
  'phaazon/hop.nvim',
  'kyazdani42/nvim-tree.lua',
  {
    'dstein64/vim-startuptime',
    cmd = "StartupTime",
    commit = "61f122ebc41e9bcf1793c752a728db59feee77bb",
  },
  {
    'kevinhwang91/rnvimr',
    cmd = 'RnvimrToggle'
  },
  'numToStr/Comment.nvim',
  'folke/persistence.nvim',
  'folke/todo-comments.nvim',
  'lewis6991/gitsigns.nvim',
  {
    'windwp/nvim-autopairs',
  },
  {
    'thinca/vim-quickrun',
    cmd = 'QuickRun',
  },
}

packer.init({
  config = {
    profile = {
      enable = true,
      threshold = 1 -- the amount in ms that a plugins load time must be over for it to be included in the profile
    }
  },
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'double' })
    end,
  },
  git = {
    clone_timeout = 60,
  },
  compile_on_sync = true,
  autoremove = true,
})

packer.startup(function(use)
  for _, v in pairs(plugins) do
    use(v)
  end
end)

vim.cmd([[
" augroup packer_user_config
"   autocmd!
"   " autocmd BufWritePost plugins.lua luafile % | PackerCompile
" augroup end

nnoremap <Leader>vi <Cmd>PackerInstall<cr>
nnoremap <Leader>vc <Cmd>PackerClean<CR>
nnoremap <Leader>vu <Cmd>PackerCompile<CR>
]])
