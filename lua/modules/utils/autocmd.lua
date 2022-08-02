oeyoews.autocmd("FileType", {
  group = oeyoews.mygroup,
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
      buffer = true, -- important
      desc = "fastly quick",
    })
  end,
})

oeyoews.autocmd("FileType", {
  group = oeyoews.mygroup,
  pattern = {
    "help",
    "startuptime",
  },
  command = "setlocal nocursorline nonumber norelativenumber",
})

oeyoews.autocmd({
  "InsertEnter",
  "WinLeave",
}, {
  group = oeyoews.mygroup,
  -- vim.opt_local.xxx
  command = "setlocal nocursorline",
})

oeyoews.autocmd({
  "WinEnter",
  "InsertLeave",
}, {
  command = "setlocal cursorline",
})

oeyoews.autocmd("BufEnter", {
  group = oeyoews.mygroup,
  pattern = {
    "*.json",
    "*.jsonc",
  },
  command = "setlocal wrap",
})

-- TODO: conflict for ranger to file to preview or enter next layer
oeyoews.autocmd("TermOpen", {
  group = oeyoews.mygroup,
  command = "call feedkeys('i') | setlocal nornu nonu nocursorline",
})

oeyoews.autocmd("TermClose", {
  group = oeyoews.mygroup,
  callback = function()
    vim.cmd([[
    call feedkeys("\<esc>")
    ]])
  end,
})
