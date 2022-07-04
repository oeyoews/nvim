local entry = "modules"
local modules = require("user.modules").modules
local m3 = require("user.modules").m3

require("user.pcall").setup("core", { "utils" }, m3)

require("user.pcall").setup(entry, modules, m3)
