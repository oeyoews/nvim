-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2022/08/01 11:58:11 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

--   Main
local Config = require("user.modules")
local pcall = require("user.pcall")
local files = Config.files
local modules = Config.modules

-- ﱤ load modules
pcall.setup("modules", modules, files)

local check_version = function()
  if oeyoews.nvim_version < 8 then
    local version_msg = string.format(
      [[
 ⚠ Your neovim version is %s， please install neovim 0.8.0 or later]],
      oeyoews.nvim_full_version_info
    )
    vim.notify(version_msg, "warn")
  end
end

local autocmd = vim.api.nvim_create_autocmd

-- Don't auto commenting new lines
autocmd("BufEnter", {
  pattern = "*",
  command = "set fo-=c fo-=r fo-=o",
})

autocmd("FileType", {
  pattern = "packer",
  callback = function()
    check_version()
  end,
})
