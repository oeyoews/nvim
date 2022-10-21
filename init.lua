-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2022/10/21 22:39:56 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- just for linux, and no mac no test, so just support linux
if vim.fn.has("linux") ~= 1 then
  vim.notify_once("Please use neovim in Linux ENV")
  return
end

pcall(require, "impatient")

--   Main
local Config = require("user.modules")
local pcall2 = require("user.pcall")
local files = Config.files
local modules = Config.modules

--  load modules
pcall2.setup(modules, files)

--- autolist
require("autolist").setup()

require("lspsaga")

local peek = require("peek")

vim.api.nvim_create_user_command("PeekOpen", function()
  if not peek.is_open() and vim.bo[vim.api.nvim_get_current_buf()].filetype == "markdown" then
    -- vim.fn.system("i3-msg split horizontal")
    peek.open()
  end
end, {})

vim.api.nvim_create_user_command("PeekClose", function()
  if peek.is_open() then
    peek.close()
    -- vim.fn.system("i3-msg move left")
  end
end, {})
