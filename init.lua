--   Main
local files = require("user.modules").files
local modules = require("user.modules").modules
local utils = require("user.modules").utils

-- ﱣ load core.utils
require("user.pcall").setup("core", utils, files)
-- ﱤ load modules
require("user.pcall").setup("modules", modules, files)
