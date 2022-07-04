local core_modules = {
  utils = {
    "bootstrap",
    "impatient",
    "night",
    "disable",
    "options",
    "mappings",
    "functions", -- need after mappings
    "tokyonight",
    "custom", -- need after tokyonight
    "notify",
  },
}

require("user.pcall")("core", core_modules)

-- vim: ft=lua
