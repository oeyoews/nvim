local modules = {
  order = {
    "impatient",
    "filetype",
    "mappings",
    "tokyonight",
    "custom",
    "notify",
    "bufferline",
  },
}

local entry = "modules"

require("modules.utils.pcall").setup(entry, modules)
