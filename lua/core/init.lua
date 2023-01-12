-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:04 by oeyoews                                  --
--   Updated: 2023/01/11 23:41:56 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- just for linux, and no mac no test, so just support linux
if vim.fn.has("linux") ~= 1 then
  -- vim.notify_once("Please use neovim in Linux ENV")
  vim.api.nvim_echo({
    {
      "Your neovim ENV not linux\n",
      "ErrorMsg",
    },
    {
      "Please use neovim in linux ENV\n",
      "WarningMsg",
    },
    { "Press any key to exit", "MoreMsg" },
  }, true, {})
  vim.fn.getchar()
  vim.cmd([[quit]])
end

require("core.disable")
require("core.oeyoews")
require("core.functions")
require("core.usercmd")
require("core.mappings")
require("core.options")
require("modules.ui.custom_ui")

-- load lazy
require("core.lazy")
