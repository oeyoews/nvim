local modules = {}

modules = {
  -- @PACKER
  packer = {
    "packer", -- neovim plugin manager
  },

  -- @utils
  utils = {
    "disable", -- disable settings
    "options", -- basic options
    "mappings", -- basic mappings
    "functions", -- basic functions
  },

  -- @TOOLS
  tools = {
    "filetype", -- optimize filetype startup time
    "indent", -- show indent line
    "windline", -- statusline
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
    "calendar", -- GTD?
    "quickrun", -- quickly run your code
    "ranger", -- use ranger in neovim
    "venn", -- drawing diagram
    "fidget", -- visualize lsp status
    "mkdp", -- open markdown preview in your browser
    "trim", -- delete any blank line and trailing whitespace
    "icon_picker", -- select so much icons
    "color_picker", -- color picker
  },

  -- @LANG
  lang = {
    "treesitter", -- friendly highlight your code
    "lspinstall", -- preinstall some servers
    "cmp", -- config completion
    "lspconfig", -- configurate lsp settings
    "null-ls", -- complete lsp configuration
    "lspsaga", -- setup lspconfig ui
  },
}

-- load plugin modules
local entry = "modules"

-- optimize startup time, need first loading impatient plugin
local ok, impatient = pcall(require, "impatient")

if not ok then
  vim.notify("   impatient not founded")
  return
end

impatient.enable_profile()

require("modules.utils.pcall_modules").setup(entry, modules)
