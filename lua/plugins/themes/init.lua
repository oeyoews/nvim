local package = "plugins.themes"

local modules = {
  "tokyonight",
  "custom",
}

require("core.pcallplus").setup(package, modules)
