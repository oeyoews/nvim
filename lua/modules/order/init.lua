local modules = {
  order = {
    "impatient",
    "disable",
    "filetype",
    "options",
    "functions",
    "mappings",
    "tokyonight",
    "custom",
    "packer",
    "notify",
    "bufferline",
  },
}

require("modules.utils.pcall").setup(modules, "order modules")
