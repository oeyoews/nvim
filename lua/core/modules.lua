local modules = {}

modules = {
  -- @packer
  packer = {
    "packer",
  },

  -- @perfect
  perfect = {
    "filetype",
  },

  -- @external
  external = {
    "notify",
  },

  -- @ui
  ui = {
    "tokyonight",
    "custom",
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
    "night",
  },
}

require("core.pcall_modules").setup("plugins", modules)
