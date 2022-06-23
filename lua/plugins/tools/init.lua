local package = "plugins.tools"

local modules = {
  "notify", -- first
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
}

require("core.pcallplus").setup(package, modules)
