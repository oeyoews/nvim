-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2022/08/01 11:01:22 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

if vim.version().minor < 8 then
  local version_msg = [[
 ⚠ Please update your neovim to 0.8.0]]
  vim.notify(version_msg, "warn")
  return
end

--   Main
local Config = require("user.modules")
local pcall = require("user.pcall")
local files = Config.files
local modules = Config.modules

-- ﱤ load modules
pcall.setup("modules", modules, files)
