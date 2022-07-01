local core_modules = {
  utils = {
    "disable",
    "options",
    "mappings",
    "functions", -- need after mappings
    "tokyonight",
    "custom", -- need after tokyonight
    "notify",
  },
}

require("core.utils.pcall").setup("core", core_modules)

-- vim: ft=lua
