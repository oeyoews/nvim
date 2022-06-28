local modules = {
  order = {
    "impatient",
    "packer",
    "filetype",
    "mappings",
    "tokyonight",
    "custom",
    "notify",
    "bufferline",
  },
}

require("modules.utils.pcall").setup(modules)
