-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2022/09/20 09:06:59 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- just for linux, and no mac no test, so just support linux
if vim.fn.has("linux") ~= 1 then
  vim.notify_once("Please use neovim in Linux ENV")
  return
end

pcall(require, "impatient")

--   Main
local Config = require("user.modules")
local pcall2 = require("user.pcall")
local files = Config.files
local modules = Config.modules

--  load modules
pcall2.setup(modules, files)

-- require("ccc")
-- require("smoothcursor").setup()

--- autolist
require("autolist").setup()

require("lspsaga")
