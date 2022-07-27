local util = require("formatter.util")
local defaults = require("formatter.defaults")

local prettier = {
  util.copyf(defaults.prettier),
}
require("formatter").setup({
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    -- TODO: how to less it [opt] == function xxx end
    -- support format file
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    -- support format file
    c = {
      require("formatter.filetypes.c").clangformat,
    },
    html = prettier,
    css = prettier,
    javascript = prettier,
    json = prettier,
    yaml = prettier,
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
})

vim.keymap.set("n", "<space>bf", "<cmd>Format<cr>", { desc = "𝐅 format code with formatter" })
