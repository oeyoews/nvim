-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   usercmd.lua                                                              --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/03 10:48:36 by oeyoews                                  --
--   Updated: 2022/08/03 11:19:27 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

vim.api.nvim_create_user_command("Edit", function(opts)
  oeyoews.creat_journey(opts.args)
end, {
  desc = "Install one or more packages.",
  nargs = "+", -- todo
  complete = "custom,v:lua.oeyoews.completion.edit",
})

vim.api.nvim_create_user_command("UpdatePlugin", function(opts)
  return oeyoews.updateSnapshots(opts.args)
end, {
  desc = "Install one or more packages.",
  nargs = 1,
  complete = "custom,v:lua.oeyoews.completion.edit",
})
