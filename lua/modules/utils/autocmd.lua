oeyoews.autocmd("FileType", {
  pattern = {
    "help",
    "startuptime",
  },
  callback = function()
    vim.cmd([[
setlocal nocursorline nonumber norelativenumber
  ]])
  end,
})

oeyoews.autocmd("FileType", {
  pattern = {
    "notify",
    "null-ls-info",
    "lspinfo",
    "startuptime",
    "help",
    "qf",
    "quickrun",
    "snippets",
    "tsplayground",
  },
  callback = function()
    vim.keymap.set("n", "q", "<cmd>q<cr>", {
      silent = true,
      desc = "fastly quick",
    })
  end,
})

oeyoews.autocmd({
  "InsertEnter",
  "WinLeave",
}, {
  -- vim.opt_local.xxx
  command = "setlocal nocursorline",
})

oeyoews.autocmd({
  "WinEnter",
  "InsertLeave",
}, {
  command = "setlocal cursorline",
})
