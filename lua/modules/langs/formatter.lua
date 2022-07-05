local util = require("formatter.util")
local defaults = require("formatter.defaults")

local prettier = {
  -- require("formatter.filetypes.json").prettier,
  util.copyf(defaults.prettier),
}
-- Provides the Format and FormatWrite commands
require("formatter").setup({
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
    -- TODO: how to less it [opt] == function xxx end
    html = prettier,
    css = prettier,
    javascript = prettier,
    json = prettier,
    yaml = prettier,
    python = {
      require("formatter.filetypes.python").autopep8, -- python3 -m pip install --upgrade autopep8
    },
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    c = {
      require("formatter.filetypes.c").clangformat,
    },
    go = {
      require("formatter.filetypes.go").gofmt,
    },
    rust = {
      require("formatter.filetypes.rust").rustfmt,
    },
    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
})

vim.cmd([[
nnoremap <silent> <leader>bf :Format<CR>
" augroup FormatAutogroup
"   autocmd!
"   autocmd BufWritePost * FormatWrite
" augroup END
]])
