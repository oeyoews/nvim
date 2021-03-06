-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2022/08/02 01:40:17 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

pcall(require, "impatient")

--   Main
local Config = require("user.modules")
local pcall2 = require("user.pcall")
local files = Config.files
local modules = Config.modules

-- ﱤ load modules
pcall2.setup(modules, files)
