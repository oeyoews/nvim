-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2022/08/29 19:46:13 by oeyoews                                  --
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

--- tiddlywiki
vim.g.tiddlywiki_dir = oeyoews.home .. "/REPOS/neotw"
vim.g.tiddlywiki_author = oeyoews.username -- default is $user
vim.g.tiddlywiki_autoupdate = true

vim.cmd([[
let g:tiddlywiki_journal_format = '%A, %F (Week %V)'
]])
