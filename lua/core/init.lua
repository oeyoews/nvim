local package = "core" -- require package

local modules = {
  "disable",
  "options", -- basic options
  "mappings", -- basic mappings
  "functions",
  "modules", -- enable modules
}

require("core.pcallplus").setup(package, modules)
