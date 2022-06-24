local package = "plugins.external"

local modules = {
  "tokyonight",
  "custom",
  "notify",
}

require("core.pcallplus").setup(package, modules)
