local util = require("tokyonight.util")
local theme = require("tokyonight.theme")

local M = {}

function M.colorscheme()
  util.load(theme.setup())
end

-- PERF: how to change all colors after change tokyonight theme
-- https://github.com/folke/tokyonight.nvim/issues/108

M.setup = M.colorscheme

return M
