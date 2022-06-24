local gitsigns = require("gitsigns")

gitsigns.setup({
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text = false,
    delay = 100,
    ignore_whitespace = false,
  },
  current_line_blame_formatter_opts = {
    relative_time = true,
  },
  max_file_length = 400,

  -- keymapping
  on_attach = function(bufnr)
    local function map(mode, lhs, rhs, opts)
      opts = vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
      vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
    end
  end,
})
