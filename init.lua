-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2022/08/01 11:41:25 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

--   Main
local Config = require("user.modules")
local pcall = require("user.pcall")
local files = Config.files
local modules = Config.modules

-- ﱤ load modules
pcall.setup("modules", modules, files)

if oeyoews.nvim_version < 8 then
  local version_msg = string.format(
    [[
 ⚠ Just support neovim %s or later]],
    oeyoews.nvim_full_version_info
  )
  vim.notify(version_msg, "warn")
end
