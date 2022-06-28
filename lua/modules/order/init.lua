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

require("modules.utils.pcall").setup(modules)
