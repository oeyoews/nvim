local core_modules = {
  "utils",
}

local m3 = {
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

local entry = "core"
local modules = core_modules
local m3 = m3

require("user.pcall").setup(entry, modules, m3)
