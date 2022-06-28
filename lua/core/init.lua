local modules = {
  "impatient", -- need first loading impatient plugin
  "disable", -- disable settings
  "options", -- basic options
  "mappings", -- basic mappings
  "functions", -- basic functions
  "modules", -- load plugin settings modules
}

-- neovim configuration loading entry
local entry = "core"

require("core.pcallplus").setup(entry, modules)
