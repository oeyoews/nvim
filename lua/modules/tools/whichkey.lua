local which_key = require("which-key")

which_key.setup({

  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "center", -- align columns left, center or right
  },

  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    padding = { 1, 1, 1, 1 }, -- extra window padding [top, right, bottom, left]
  },

  key_labels = {
    ["<space>"] = "SPC",
    ["<cr>"] = "RET",
    ["<tab>"] = "TAB",
  },
  show_help = false, -- more silent in minimal buffer
})

which_key.register({
  f = { name = "+file" },
  b = { name = "+buffer" },
  w = { name = "+winnow" },
  l = { name = "+lang" },
  t = { name = "+toggle" },
}, { prefix = "<space>" })
