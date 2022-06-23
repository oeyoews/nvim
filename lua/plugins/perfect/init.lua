local package = "plugins.perfect"

local modules = {
  "impatient",
  "filetype",
}

require("core.pcallplus").setup(package, modules)
