local modules = {
  order = {
    "impatient",
    "disable",
    "filetype",
    "options",
    "functions",
    "mappings",
    "packer",
    "tokyonight",
    "custom",
    "notify",
    "bufferline",
  },
}

require("modules.utils.pcall").setup(modules)
