local modules = {
  order = {
    "filetype",
    "disable",
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
