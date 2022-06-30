local modules = {
  order = {
    "filetype",
    -- "disable",
    -- "options",
    -- "functions",
    -- "mappings",
    -- "tokyonight",
    -- "custom",
    "packer",
    -- "notify",
    "bufferline",
  },
}

require("core.utils.pcall").setup(modules, "order modules")
