local M = {}

M.gitsigns = function()
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
    numhl = true,
  })
end

-- mkdp
M.mkdp = function()
  local mkdp_options = {
    mkdp_auto_close = 0,
    mkdp_echo_preview_url = false,
    mkdp_port = 9999,
    mkdp_open_to_the_world = false, -- need network
    mkdp_theme = "dark",
    mkdp_filetypes = {
      "markdown",
      "txt",
      "html",
    },
  }

  for index, value in pairs(mkdp_options) do
    vim.g[index] = value
  end

  vim.keymap.set("n", "<space>fM", "<cmd>MarkdownPreviewToggle<cr>", {
    desc = " preview markdown in browser",
    buffer = true,
  })
end

-- emoji
M.emoji = function()
  require("icon-picker").setup({
    disable_legacy_commands = false,
  })

  vim.keymap.set("i", "<A-i>", "<cmd>IconPickerNormal alt_font symbols nerd_font emoji<cr>", {
    desc = "𝑷 insert icon",
  })
  vim.keymap.set("n", "<space>ie", "<cmd>IconPickerNormal alt_font symbols nerd_font emoji<cr>", {
    desc = "𝑷 insert icon",
  })
end

return M
