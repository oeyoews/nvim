require("plugins.perfect.impatient")

local package = "core" -- require package

local modules = {
  "disable", -- disable settings
  "options", -- basic options
  "mappings", -- basic mappings
  "functions", -- basic functions
  "modules", -- enable modules
}

require("core.pcallplus").setup(package, modules)
