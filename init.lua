local m3 = require("user.modules").m3
local modules = require("user.modules").modules
local utils = require("user.modules").utils

-- load core.utils
require("user.pcall").setup("core", utils, m3)
-- load modules
require("user.pcall").setup("modules", modules, m3)
