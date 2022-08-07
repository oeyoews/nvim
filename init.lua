-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2022/08/07 22:59:42 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- just for linux, and no mac no test, so just support linux
if vim.fn.has("linux") ~= 1 then
  vim.notify("Please use neovim linux env")
  return
end

pcall(require, "impatient")

--   Main
local Config = require("user.modules")
local pcall2 = require("user.pcall")
local files = Config.files
local modules = Config.modules

-- ﱤ load modules
pcall2.setup(modules, files)
