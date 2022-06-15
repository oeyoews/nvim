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
  -- @Perfect
  {
    'nathom/filetype.nvim',
  },
  {
    'lewis6991/impatient.nvim',
  },
  {
    'wbthomason/packer.nvim',
  },
  {
    'rcarriga/nvim-notify',
  },
  {
    'kyazdani42/nvim-web-devicons',
  },
  {
    'nvim-lua/plenary.nvim',
  },

  -- #Ui
  {
    'norcalli/nvim-colorizer.lua',
  },
  {
    'windwp/windline.nvim',
  },
  {
    'lukas-reineke/indent-blankline.nvim',
  },
  {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
  },
  {
    'nvim-treesitter/nvim-treesitter',
    cmd = { "TSInstall", "TSUpdate", "TSUninstall", },
    run = ":TSUpdate",
  },
  {
    'p00f/nvim-ts-rainbow',
  },
  {
    'nvim-treesitter/nvim-treesitter-refactor',
  },
  {
    'windwp/nvim-ts-autotag',
    ft = { "html", "xml" },
  },

  -- @LSP
  {
    'hrsh7th/nvim-cmp',
    requires = {
      'williamboman/nvim-lsp-installer',
      'hrsh7th/cmp-buffer',
      'abecodes/tabout.nvim',
      'hrsh7th/cmp-nvim-lsp',
      {
        'hrsh7th/cmp-emoji',
        ft = 'markdown',
      },
      'hrsh7th/cmp-path',
      'honza/vim-snippets',
      'SirVer/ultisnips',
      'quangnguyen30192/cmp-nvim-ultisnips',
    }
  },
  {
    'neovim/nvim-lspconfig',
    requires = {
      'tami5/lspsaga.nvim',
      'onsails/lspkind-nvim',
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
  {
    'nvim-neorg/neorg',
    ft = 'norg'
  },
  {
    'iamcco/markdown-preview.nvim',
    ft = 'markdown',
    run = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    'b0o/incline.nvim',
  },
  {
    'ekickx/clipboard-image.nvim',
    ft = 'markdown',
    cmd = 'PostImg',
  },
  {
    'Pocco81/HighStr.nvim',
  },
  {
    'itchyny/calendar.vim',
    cmd = 'Calendar',
  },
  {
    'yianwillis/vimcdoc',
    lock = true
  },
  {
    'folke/which-key.nvim',
  },
  {
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
  },
  {
    'phaazon/hop.nvim',
  },
  {
    'kyazdani42/nvim-tree.lua',
  },
  {
    'dstein64/vim-startuptime',
    cmd = "StartupTime",
    commit = "61f122ebc41e9bcf1793c752a728db59feee77bb",
  },
  {
    'kevinhwang91/rnvimr',
    cmd = 'RnvimrToggle'
  },
  {
    'numToStr/Comment.nvim',
  },
  {
    'folke/persistence.nvim',
  },
  {
    'folke/todo-comments.nvim',
  },
  {
    'lewis6991/gitsigns.nvim',
    opt = true,
  },
  {
    'windwp/nvim-autopairs',
  },
  {
    'thinca/vim-quickrun',
    cmd = 'QuickRun',
  },
}

packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end,
    prompt_border = 'single',
  },
  git = {
    clone_timeout = 6000,
  },
  auto_clean = true,
  compile_on_sync = true,
})

packer.startup(function(use)
  for _, v in pairs(plugins) do
    use(v)
  end
end)

vim.cmd([[
augroup packer_user_config
  autocmd!
  " autocmd BufWritePost plugins.lua luafile % | PackerCompile
augroup end

nnoremap <Leader>vi <Cmd>PackerInstall<cr>
nnoremap <Leader>vc <Cmd>PackerClean<CR>
nnoremap <Leader>vu <Cmd>PackerCompile<CR>
]])
