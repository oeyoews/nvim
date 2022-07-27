require("modules.utils.oeyoews")

--   Main
local files = require("user.modules").files
local modules = require("user.modules").modules
local pcall = require("user.pcall")

-- ﱤ load modules
pcall.setup("modules", modules, files)
