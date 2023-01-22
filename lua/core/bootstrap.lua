-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   bootstrap.lua                                                            --
--                                                                            --
--   By: oeyoews <mail>                                                       --
--                                                                            --
--   Created: 2023/01/22 18:34:17 by oeyoews                                  --
--   Updated: 2023/01/22 18:34:18 by oeyoews                                  --
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
