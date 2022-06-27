-- first load impatient plugin
require("modules.perfect.impatient")

local modules = {
  "disable", -- disable settings
  "options", -- basic options
  "mappings", -- basic mappings
  "functions", -- basic functions
  "modules", -- load plugin settings modules
}

-- neovim configuration loading entry
require("core.pcallplus").setup("core", modules)
