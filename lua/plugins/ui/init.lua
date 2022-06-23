local package = "plugins.ui"

local modules = {
  "indent",
  "bufferline",
  "windline",
}

require("core.pcallplus").setup(package, modules)
