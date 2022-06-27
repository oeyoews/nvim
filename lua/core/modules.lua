local modules = {}

modules = {
  night = {
    "init",
  },
  packer = {
    "init",
  },
  perfect = {
    "impatient",
    "filetype",
  },
  external = {
    "tokyonight",
    "custom",
    "notify",
  },
  ui = {
    "indent",
    "bufferline",
    "windline",
  },
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
  lsp = {
    "treesitter",
    "lspinstall", -- preinstall some servers
    "cmp", -- config completion
    "lspconfig",
    "null-ls",
    "lspsaga",
  },
}

require("core.pcall_modules").setup(modules)
