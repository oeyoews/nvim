-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2023/01/11 17:36:34 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- just for linux, and no mac no test, so just support linux
if vim.fn.has("linux") ~= 1 then
  vim.notify_once("Please use neovim in Linux ENV")
  return
end


require("modules.utils.disable")
require("modules.utils.oeyoews")
require("modules.utils.functions")
require("modules.utils.usercmd")
require("modules.utils.mappings")
require("modules.utils.options")


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
    path = configdir .. "/builtin"
  }
}

require("lazy").setup(oeyoews.pluginlist, lazyconfig)

require("impatient")
