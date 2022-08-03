-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   usercmd.lua                                                              --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/03 10:48:36 by oeyoews                                  --
--   Updated: 2022/08/04 01:02:10 by oeyoews                                  --
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
})

vim.api.nvim_create_user_command("CleanPlugins", "PackerClean", {
  desc = "CleanPlugins ",
})

-- now, only add icon-picker config in pluginlist f-args
vim.api.nvim_create_user_command("LoadPlugins", "lua require('packer').loader(<f-args>, '<bang>' == '!')", {
  desc = "Install one or more packages.",
  nargs = "+",
  complete = "customlist,v:lua.require'packer'.loader_complete",
})

vim.api.nvim_create_user_command("Scriptsnames", "split | ene|pu=execute('scriptnames')", {
  desc = "scriptnames ",
})
