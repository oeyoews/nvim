-- vimtex
vim.opt_local.wrap = true
vim.opt_local.conceallevel = 2

-- optional
-- vim.cmd([[VimtexCompile]])

-- vim.cmd([[packadd vim-latex-live-preview]])
-- preview option
-- this option not support local
-- vim.opt_local.updatetime = 1000

-- add executable check for evince or okular pdf preview binary
-- vim.keymap.set("n", "<space>LT", "<cmd>LLPStartPreview<cr>", {
--   buffer = true,
--   silent = true,
--   desc = "preview tex",
-- })

vim.keymap.set("n", "<space>lt", "<cmd>VimtexCompile<cr>", {
  silent = true,
  desc = "",
})

vim.keymap.set("n", "<space>lp", "<cmd>VimtexView<cr>", {
  buffer = true,
  silent = true,
  desc = "preview pdf",
})

vim.keymap.set("n", "<space>lT", "<cmd>VimtexStop<cr>", {
  buffer = true,
  silent = true,
  desc = "stop compile",
})
-- how to clean files automatically

vim.keymap.set("n", "<space>fl", "<cmd>VimtexTocToggle<cr>", {
  buffer = true,
  silent = true,
  desc = "",
})

vim.keymap.set("n", "<space>lE", "<cmd>VimtexErrors<cr>", {
  buffer = true,
  silent = true,
  desc = "",
})
