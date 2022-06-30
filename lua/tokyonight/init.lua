local util = require("tokyonight.util")
local theme = require("tokyonight.theme")

local M = {}

function M.colorscheme()
  util.load(theme.setup())
end

-- PERF: how to change all colors after change tokyonight theme
-- https://github.com/folke/tokyonight.nvim/issues/108

-- @field: opt ==> theme name
function M.toggle_theme(opt)
  package.loaded["tokyonight.config"] = nil
  -- setup default value: night
  opt = opt or "night"

  vim.g.tokyonight_style = opt
  require("tokyonight").colorscheme()
end

M.setup = M.colorscheme

return M
