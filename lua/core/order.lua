local core_modules = {
  utils = {
    "disable",
    "options",
    "functions",
    "mappings",
    "tokyonight",
    "custom",
    "notify",
  },
}

require("core.utils.pcall").setup("core", core_modules)
