-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2022/08/01 00:49:23 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

--   Main
local Config = require("user.modules")
local pcall = require("user.pcall")
local files = Config.files
local modules = Config.modules

-- ﱤ load modules
pcall.setup("modules", modules, files)
