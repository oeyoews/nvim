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
  buffer = true,
  desc = " preview markdown in browser",
})

-- oeyoews.autocmd("FileType", {
--   pattern = g.mkdp_filetypes,
--   callback = function()
--     vim.keymap.set("n", "<space>fM", "<cmd>MarkdownPreviewToggle<cr>", {
--       silent = true,
--       desc = " preview markdown in browser",
--     })
--   end,
-- })
