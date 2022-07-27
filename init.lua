--   Main
local files = require("user.modules").files
local modules = require("user.modules").modules
local utils = require("user.modules").utils
local pcall = require("user.pcall")

-- ﱣ load core.utils
pcall.setup("core", utils, files)
-- ﱤ load modules
pcall.setup("modules", modules, files)
