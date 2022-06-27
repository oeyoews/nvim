local modules = {}

modules = {
  -- @packer
  packer = {
    "packer", -- neovim plugin manager
  },

  -- @perfect
  perfect = {
    "filetype", -- optimize filetype startup time
  },

  -- @ui
  ui = {
    "tokyonight", -- neovim theme
    "custom", -- custom theme configuration
    "indent", -- show indent line
    "bufferline", -- buffer manager
    "windline", -- statusline
    "notify", -- better notification in neovim
    "night", -- neovim ngihtly settings
  },

  -- @tools
  tools = {
    "hop", -- jump anywhere
    "colorizer", -- show color in neovim
    "gitsigns", -- show git changes in signcolumn
    "comment", -- fast comment your code
    "autopairs", -- automatically match your half
    "highstr", -- highlight select text
    "neorg", -- replace emace org mode
    "persistence", -- session manager
    "tabout", -- jump brackets base nvim-treesitter
    "telescope", -- can do anything
    "whichkey", -- show your key bindings
    "toggleterm", -- embed terminal
    "icon_picker", -- select so much icons
    "calendar", -- GTD?
    "quickrun", -- quickly run your code
    "ranger", -- use ranger in neovim
    "venn", -- drawing diagram
    "fidget", -- visualize lsp status
    "mkdp", -- open markdown preview in your browser
    "trim", -- delete any blank line and trailing whitespace
  },

  -- @lsp
  lsp = {
    "treesitter", -- friendly highlight your code
    "lspinstall", -- preinstall some servers
    "cmp", -- config completion
    "lspconfig", -- configurate lsp settings
    "null-ls", -- complete lsp configuration
    "lspsaga", -- setup lspconfig ui
  },
}

-- load plugin modules
require("core.pcall_modules").setup("plugins", modules)
