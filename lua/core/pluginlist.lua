local builtinDir = vim.fn.stdpath('config') .. '/builtin/'

oeyoews.pluginlist = {
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    keys = {
      {
        's',
        mode = { 'n', 'x', 'o' },
        function()
          -- default options: exact mode, multi window, all directions, with a backdrop
          require('flash').jump()
        end,
        desc = 'Flash',
      },
      {
        'S',
        mode = { 'n', 'o', 'x' },
        function()
          -- show labeled treesitter nodes around the cursor
          require('flash').treesitter()
        end,
        desc = 'Flash Treesitter',
      },
      {
        'r',
        mode = 'o',
        function()
          -- jump to a remote location to execute the operator
          require('flash').remote()
        end,
        desc = 'Remote Flash',
      },
      {
        'R',
        mode = { 'n', 'o', 'x' },
        function()
          -- show labeled treesitter nodes around the search matches
          require('flash').treesitter_search()
        end,
        desc = 'Treesitter Search',
      },
    },
  },
  -- "eandrju/cellular-automaton.nvim",
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      require('modules.ui.ui')
    end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    lazy = true,
    cmd = 'NvimTreeOpen',
    event = 'VeryLazy',
    config = function()
      require('modules.ui.nvim_tree')
    end,
  },
  {
    'rcarriga/nvim-notify',
    config = function()
      require('modules.ui.notify')
    end,
  },
  {
    'nguyenvukhang/nvim-toggler',
    event = 'VeryLazy',
    config = function()
      require('modules.tools.toggler')
    end,
  },
  {
    'folke/which-key.nvim',
    config = true,
  },
  {
    'oeyoews/rnvimr',
    lazy = true,
    enabled = true,
    cmd = 'RnvimrToggle',
    keys = {
      '<Space>ft',
    },
    config = function()
      require('modules.tools.ranger')
    end,
  },
  {
    'cappyzawa/trim.nvim',
    config = function()
      require('modules.tools.trim')
    end,
  },
  {
    'thinca/vim-quickrun',
    event = 'VeryLazy',
  },
  'nvim-lua/plenary.nvim',
  'MunifTanjim/nui.nvim',
  {
    'nvim-tree/nvim-web-devicons',
    config = function()
      require('modules.ui.web_icons')
    end,
  },
  {
    'stevearc/dressing.nvim',
    event = 'VeryLazy',
  },
  {
    'ziontee113/icon-picker.nvim',
    lazy = true,
    keys = {
      '<Space>ie',
    },
    cmd = 'PickEmoji',
    config = function()
      oeyoews.lazyload.emoji()
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('indent_blankline')
    end,
  },
  {
    'akinsho/bufferline.nvim',
    config = function()
      require('modules.ui.bufferline')
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter', -- nvim-treesitter bug: checkhealth nvim-treesitter, and execute tsinstall! vim
    -- commit= "e54c8873ef964c730af451fedd4490166d335e3a",
    build = ':TSUpdate',
    pin = true,
    config = function()
      require('modules.ui.treesitter')
    end,
    dependencies = {
      'windwp/nvim-ts-autotag',
    },
  },
  {
    'williamboman/mason.nvim',
    dependencies = {
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
    },
    config = function()
      require('modules.langs.mason')
    end,
  },
  {
    'hrsh7th/nvim-cmp',
    event = 'VeryLazy',
    dependencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'jcha0713/cmp-tw2css',
    },
    config = function()
      require('modules.langs.cmp')
    end,
  },
  -- 'quangnguyen30192/cmp-nvim-ultisnips',
  'SirVer/ultisnips',
  'honza/vim-snippets',
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('modules.langs.lspconfig')
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('modules.tools.telescope')
    end,
  },
  {
    'lewis6991/gitsigns.nvim',
    event = 'VeryLazy',
    config = function()
      oeyoews.lazyload.gitsigns()
    end,
  },
  {
    'numToStr/Comment.nvim',
    event = 'VeryLazy',
    config = function()
      require('modules.tools.comment')
    end,
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = [[require("nvim-autopairs").setup()]],
  },
  {
    'oeyoews/nvim-colorizer.lua',
    ft = {
      'css',
      'html',
    },
    cmd = 'ColorizerToggle',
    config = [[require("colorizer").setup()]],
  },
  {
    dir = builtinDir .. 'persistence',
    config = function()
      require('modules.tools.persistence')
    end,
  },
  {
    dir = builtinDir .. 'telescope',
  },
  {
    'barrett-ruth/live-server.nvim',
    -- build = "yarn global add live-server", --TODO
    enabled = true,
    lazy = true,
    cmd = 'LiveServerStart',
    ft = 'html', -- not work ???
    config = true,
  },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('modules.tools.lualine')
    end,
  },
  {
    'themaxmarchuk/tailwindcss-colors.nvim',
    enabled = true,
    config = function()
      require('tailwindcss-colors').setup()
    end,
  }
}

-- autoload on loading this pluginlist variable
vim.keymap.set('n', '<space>fp', function()
  return oeyoews.find_lua_file('lua/core/pluginlist')
end, { desc = ' pluginlist' })
