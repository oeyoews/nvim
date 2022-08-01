local g = vim.g

g.mkdp_auto_close = 0
g.mkdp_echo_preview_url = false
g.mkdp_port = 9999
g.mkdp_open_to_the_world = false -- need network
g.mkdp_theme = "dark"

g.mkdp_filetypes = {
  "markdown",
  "txt",
  "html",
}

oeyoews.autocmd("FileType", {
  pattern = g.mkdp_filetypes,
  callback = function()
    vim.keymap.set("n", "<space>fM", "<cmd>MarkdownPreviewToggle<cr>", {
      silent = true,
      desc = " preview markdown in browser",
    })
  end,
})
