local core_modules = {
  utils = {
    "options",
    "functions",
    "mappings",
    "tokyonight",
    -- "catppuccin",
    "custom",
    "notify",
  },
}

require("core.utils.pcall").setup("core", core_modules)
