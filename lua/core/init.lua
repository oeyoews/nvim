-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2023/01/11 23:41:56 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- just for linux, and no mac no test, so just support linux
if vim.fn.has("linux") ~= 1 then
  vim.notify_once("Please use neovim in Linux ENV")
  return
end

require("core.disable")
require("core.oeyoews")
require("core.functions")
require("core.usercmd")
require("core.mappings")
require("core.options")
require("modules.ui.custom_ui")

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

local lazyconfig = {
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
}

-- lazy entry
require("lazy").setup(oeyoews.pluginlist, lazyconfig)
