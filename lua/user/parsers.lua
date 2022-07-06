-- @module: parsers.lua
-- @ref: modules.langs.(null-ls.lua && treesitter.lua)

local parsers = {}

parsers = {
  "c",
  "bash",
  "json",
  "jsonc",
  "json5",
  "java",
  "javascript",
  "lua",
  "vim",
  "yaml",
  "toml",
  "python",
  "go",
  "make",
  "gomod",
  "markdown",
  "markdown_inline",
  "css",
  "html",
  "rust",
  "comment", -- support @ highlight in comments
  "vue",
  "org",
  "norg",
}

return parsers
