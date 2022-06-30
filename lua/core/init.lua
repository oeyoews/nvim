local core_modules = {
  utils = {
    "options",
    "functions",
    "mappings",
    "tokyonight",
    "custom",
    "notify",
  },
}

require("core.utils.pcall").setup("core", core_modules)

-- vim: ft=lua
