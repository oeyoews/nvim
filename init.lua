-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2022/08/01 10:48:45 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

if vim.version().minor < 8 then
  vim.notify(
    [[
 ⚠ Please update your neovim to latest]],
    "warn"
  )
  return
end

--   Main
local Config = require("user.modules")
local pcall = require("user.pcall")
local files = Config.files
local modules = Config.modules

-- ﱤ load modules
pcall.setup("modules", modules, files)
