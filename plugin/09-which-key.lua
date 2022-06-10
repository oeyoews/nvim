local which_key_ok, which_configs = pcall(require, "which-key")

if not which_key_ok then
  return false
end

which_configs.setup {

  plugins = {
    marks = false,
    registers = true,
    spelling = {
      enabled = false,
      suggestions = 20,
    },
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
      windows = false,
      nav = false,
      z = false,
      g = false,
    },
  },

  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "center" -- align columns left, center or right
  },

  window = {
    border = "none", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 1, 1, 1, 1 }, -- extra window padding [top, right, bottom, left]
  },

  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },

  key_labels = {
    ["<space>"] = "SPC",
    ["<cr>"] = "RET",
    ["<tab>"] = "TAB",
  },

  show_help = false, -- more silent in minimal buffer
  ignore_missing = false, -- not modify it
}

which_configs.register({

  f = { name = "+file" },
  b = { name = "+buffer" },
  w = { name = "+winnow" },
  l = { name = "+lang" },
  t = { name = "+toggle" },
}, { prefix = "<space>" })
