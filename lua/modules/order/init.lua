local modules = {
  order = {
    "impatient",
    "filetype",
    "disable",
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
