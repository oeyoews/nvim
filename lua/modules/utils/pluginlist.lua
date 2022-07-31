-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   pluginlist.lua                                     :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: oeyoews <oeyoews>                          +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2022/07/31 12:47:31 by oeyoews           #+#    #+#             --
--   Updated: 2022/07/31 17:41:28 by oeyoews          ###   ########          --
--                                                                            --
-- -------------------------------------------------------------------------- --

oeyoews.pluginlist = {
  "rafcamlet/nvim-luapad",
  "kyazdani42/nvim-tree.lua",
  "folke/lua-dev.nvim",
  "mzlogin/vim-markdown-toc",
  "danymat/neogen",
  "lewis6991/impatient.nvim",
  "nathom/filetype.nvim",
  "wbthomason/packer.nvim",
  "nvim-lua/plenary.nvim",
  "kyazdani42/nvim-web-devicons",
  "stevearc/dressing.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "akinsho/bufferline.nvim",
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  },
  "nvim-treesitter/nvim-treesitter-refactor",
  "p00f/nvim-ts-rainbow",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  "hrsh7th/nvim-cmp",
  "quangnguyen30192/cmp-nvim-ultisnips",
  "hrsh7th/cmp-buffer",
  "neovim/nvim-lspconfig",
  "jose-elias-alvarez/null-ls.nvim",
  "glepnir/lspsaga.nvim",
  "honza/vim-snippets",
  "SirVer/ultisnips",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-path",
  -- @TOOLS
  "dhruvasagar/vim-table-mode",
  "folke/todo-comments.nvim",
  "nvim-telescope/telescope.nvim",
  "nvim-telescope/telescope-packer.nvim",
  "phaazon/hop.nvim",
  "norcalli/nvim-colorizer.lua",
  "lewis6991/gitsigns.nvim",
  "numToStr/Comment.nvim",
  "windwp/nvim-autopairs",
  "oeyoews/tabout.nvim",
  "folke/which-key.nvim",
  {
    "ziontee113/icon-picker.nvim",
  },
  "kevinhwang91/rnvimr",
  "cappyzawa/trim.nvim",
  "ekickx/clipboard-image.nvim",
  "thinca/vim-quickrun",
  "dstein64/vim-startuptime",
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
  },
  oeyoews.builtin_plugin,
}

-- mapping
vim.keymap.set("n", "<space>fp", function()
  return oeyoews.find_lua_file("lua/modules/utils/pluginlist")
end, { desc = " pluginlist" })
