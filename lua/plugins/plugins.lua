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
  {
    'hrsh7th/cmp-nvim-lsp',
  },
  {
    'williamboman/nvim-lsp-installer',
  },
  { 'quangnguyen30192/cmp-nvim-ultisnips' },
  { 'SirVer/ultisnips' },
  { 'honza/vim-snippets' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-emoji' },
  { 'hrsh7th/cmp-path' },
  { 'tami5/lspsaga.nvim' },
  { 'onsails/lspkind-nvim' },
  { 'lukas-reineke/lsp-format.nvim' },
  { 'ray-x/lsp_signature.nvim' },
  { 'nvim-treesitter/nvim-treesitter-refactor' },
  { 'p00f/nvim-ts-rainbow' },
  {
    'windwp/nvim-ts-autotag',
  },
  {
    'j-hui/fidget.nvim',
  },
  {
    'folke/trouble.nvim',
  },
  {
    'nvim-neorg/neorg',
  },
  {
    'iamcco/markdown-preview.nvim',
  },
  {
    'b0o/incline.nvim',
  },
  {
    'ekickx/clipboard-image.nvim',
  },
  {
    'Pocco81/HighStr.nvim',
  },
  {
    'itchyny/calendar.vim',
  },
  {
    'yianwillis/vimcdoc',
  },
  {
    'abecodes/tabout.nvim',
  },
  {
    'nathom/filetype.nvim',
  },
  {
    'folke/which-key.nvim',
  },
  {
    'wbthomason/packer.nvim',
  },
  {
    'lewis6991/impatient.nvim',
  },
  {
    'kyazdani42/nvim-web-devicons',
  },
  {
    'nvim-treesitter/nvim-treesitter',
  },
  {
    'nvim-lua/plenary.nvim',
  },
  {
    'rcarriga/nvim-notify',
  },
  {
    'akinsho/bufferline.nvim',
  },
  {
    'nvim-telescope/telescope.nvim',
  },
  {
    'phaazon/hop.nvim',
  },
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
    'hrsh7th/nvim-cmp',
  },
  {
    'kyazdani42/nvim-tree.lua',
  },
  {
    'dstein64/vim-startuptime',
  },
  {
    'kevinhwang91/rnvimr',
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
  },
  {
    'windwp/nvim-autopairs',
  },
  {
    'thinca/vim-quickrun',
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
  },
  {
    'neovim/nvim-lspconfig',
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
  " autocmd BufWritePost plugins.lua luafile plugins.lua | PackerCompile
augroup end

nnoremap <Leader>vi <Cmd>PackerInstall<cr>
" nnoremap <Leader>vc <Cmd>PlugClean<CR>
" nnoremap <Leader>vu <Cmd>PlugUpdate<CR>
]])
