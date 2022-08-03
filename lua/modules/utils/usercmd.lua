-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   usercmd.lua                                                              --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/03 10:48:36 by oeyoews                                  --
--   Updated: 2022/08/03 15:23:10 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

vim.api.nvim_create_user_command("Edit", function(opts)
  oeyoews.creat_journey(opts.args)
end, {
  desc = "Install one or more packages.",
  nargs = "+", -- todo
  complete = "custom,v:lua.oeyoews.completion.edit",
})

vim.api.nvim_create_user_command("UpdatePlugins", function()
  return oeyoews.updateSnapshots()
end, {
  desc = "UpdatePlugins ",
  nargs = 0,
})

vim.api.nvim_create_user_command("LoadPlugins", function(opts)
  vim.cmd(([[packadd %s]]):format(opts.args))
  require("user.lazyload.icon_picker")
end, {
  desc = "load lazyload plugins",
  nargs = "+",
  complete = "custom,v:lua.oeyoews.loadpluginslist",
})
