local package = "plugins.tools"

local modules = {
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
}

require("core.pcallplus").setup(package, modules)
