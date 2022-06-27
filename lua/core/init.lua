require("plugins.perfect.impatient")

local modules = {
  "disable", -- disable settings
  "options", -- basic options
  "mappings", -- basic mappings
  "functions", -- basic functions
  "modules", -- enable modules
}

require("core.pcallplus").setup("core", modules)
