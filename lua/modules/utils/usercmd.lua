-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   usercmd.lua                                                              --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/03 10:48:36 by oeyoews                                  --
--   Updated: 2022/08/27 10:11:35 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

--[[ ---
-- get this complist file list
vim.api.nvim_create_user_command("EditTid", function(opts)
  return oeyoews.creat_tid(opts.args)
end, {
  desc = "create tid file",
  nargs = 1, -- todo
}) --]]

--- create some user command
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
  desc = "UpdatePlugins",
})

vim.api.nvim_create_user_command("Scriptsnames", "split | ene|pu=execute('scriptnames')", {
  desc = "scriptnames ",
})

-- autocmd User StartupTimeSaved echomsg " neovim startuptime is" g:saved_startuptime.startup.mean "ms"
--[=[ vim.api.nvim_create_user_command(
  "StartupTimeSaved",
  'echomsg " neovim startuptime is" g:saved_startuptime.startup.mean "ms"',
  {
    desc = "scriptnames ",
  }
) --]=]
