local configdir = vim.fn.stdpath("config")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local lazyconfig =
  {
    dev = {
      path = configdir .. "/builtin",
    },
    checker = {
      -- automatically check for plugin updates
      enabled = true,
      concurrency = nil, ---@type number? set to 1 to check for updates very slowly
      notify = true, -- get a notification when new updates are found
      frequency = 3600, -- check for updates every hour
    },
    -- ui = {
    --   icons = {
    --     cmd = "⌘",
    --     config = "🛠",
    --     event = "📅",
    --     ft = "📂",
    --     init = "⚙",
    --     keys = "🗝",
    --     plugin = "🔌",
    --     runtime = "💻",
    --     source = "📄",
    --     start = "🚀",
    --     task = "📌",
    --     lazy = "💤 ",
    --   },
  },
    -- not work ??
  -- custom_keys = {
  --   ["<space>lp"] = function()
  --   end,
  -- },

  -- lazy entry
require("lazy").setup(oeyoews.pluginlist, lazyconfig)
