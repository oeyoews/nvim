--[=[ oeyoews.autocmd("VimEnter", {
  group = oeyoews.mygroup,
  callback = function()
    if vim.fn.argv(0) == "" then
      require("telescope.builtin").oldfiles()
    end
  end,
}) --]=]
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
    "quickrun",
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

oeyoews.autocmd("TermOpen", {
  group = oeyoews.mygroup,
  command = "startinsert | setlocal nornu nonu nocursorline",
  --[=[ callback = function()
    -- vim.cmd([[startinsert | setlocal nornu nonu nocursorline ]])
    if vim.opt.buftype._value == "terminal" then
      -- enter ranger will also trigger this msg
      -- vim.notify_once("  Enter Terminal-Mode")
    end
  end, --]=]
})

oeyoews.autocmd("TermClose", {
  group = oeyoews.mygroup,
  callback = function()
    -- must have the slash
    vim.cmd([[
    call feedkeys("\<esc>")
    ]])
  end,
})

-- Don't auto commenting new lines
oeyoews.autocmd("BufEnter", {
  group = oeyoews.mygroup,
  pattern = "*",
  command = "set fo-=c fo-=r fo-=o",
})

-- TODO: put in vim-startuptime config file
-- add load plugins
---[=[
oeyoews.autocmd({
  "VimEnter",
}, {
  group = oeyoews.mygroup,
  callback = function()
    if oeyoews.options.enable_startuptime then
      vim.cmd([[
    autocmd User StartupTimeSaved echomsg "Neovim loaded configuration in" g:saved_startuptime.startup.mean "ms"
    ]])
    end
  end,
})

-- vim.defer_fn(function()
--   vim.cmd([[StartupTime --save saved_startuptime --hidden]])
-- end, 100)
--]=]

oeyoews.autocmd({
  "BufEnter",
}, {
  group = oeyoews.mygroup,
  pattern = {
    "*.mdx",
  },
  command = "set filetype=markdown",
})

oeyoews.autocmd({
  "BufEnter",
}, {
  group = oeyoews.mygroup,
  pattern = {
    "*.info",
  },
  command = "set filetype=json",
})
