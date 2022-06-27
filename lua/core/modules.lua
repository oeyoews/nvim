local modules = {}

modules = {
  -- @packer
  packer = {
    "init",
  },

  -- @perfect
  perfect = {
    "filetype",
  },

  -- @external
  external = {
    "tokyonight",
    "custom",
    "notify",
  },

  -- @ui
  ui = {
    "indent",
    "bufferline",
    "windline",
  },

  -- @tools
  tools = {
    "hop",
    "colorizer",
    "gitsigns",
    "comment",
    "autopairs",
    "highstr",
    "neorg",
    "persistence",
    "tabout",
    "telescope",
    "whichkey",
    "toggleterm",
    "icon_picker",
    "calendar",
    "quickrun",
    "ranger",
    "venn",
    "fidget",
    "mkdp",
    "trim",
  },

  -- @lsp
  lsp = {
    "treesitter",
    "lspinstall", -- preinstall some servers
    "cmp", -- config completion
    "lspconfig",
    "null-ls",
    "lspsaga",
  },

  -- @night
  night = {
    "init",
  },

}

require("core.pcall_modules").setup(modules)
