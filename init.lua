-- some modules need variables
local files = require("user.modules").files
local modules = require("user.modules").modules
local utils = require("user.modules").utils

-- load core.utils
require("user.pcall").setup("core", utils, files)
-- load modules
require("user.pcall").setup("modules", modules, files)
