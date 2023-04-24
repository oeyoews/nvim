local function get_status_string()
  return vim.fn["codeium#GetStatusString"]()
end

require("lualine").setup({
  sections = {
    lualine_c = {
      {
        get_status_string,
        color = { fg = "#ff9e64" },
      },
    },
    lualine_x = {
      {
        require("lazy.status").updates,
        cond = require("lazy.status").has_updates,
        color = { fg = "#ff9e64" },
      },
    },
  },
})
