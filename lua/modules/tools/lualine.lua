--[=[ local function get_status_string()
  return vim.fn["codeium#GetStatusString"]()
end
--]=]
-- require("lualine").setup({
--   sections = {
--     -- load codeium.vim status
--     --[=[ lualine_c = {
--       {
--         get_status_string,
--         color = { fg = "#ff9e64" },
--       },
--     }, --]=]
--     lualine_x = {
--       {
--         require("lazy.status").updates,
--         cond = require("lazy.status").has_updates,
--         color = { fg = "#ff9e64" },
--       },
--     },
--   },
-- })

require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = "auto",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { "" }, -- hostname
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
})
