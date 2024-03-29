-- if vim.fn.has('linux') ~= 1 then
--   vim.notify_once("Please use neovim in Linux ENV")
--   vim.api.nvim_echo({
--     {
--       'Your neovim ENV not linux\n',
--       'ErrorMsg',
--     },
--     {
--       'Please use neovim in linux ENV\n',
--       'WarningMsg',
--     },
--     { 'Press any key to exit', 'MoreMsg' },
--   }, true, {})
--   vim.fn.getchar(vim.cmd([[quit]])
-- end


if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.notify_once("检测到你正在使用Windows")
  vim.api.nvim_echo({
    {
      '建议在 Linux 环境下使用 Neovim \n',
      'WarningMsg',
    },
    { 'Press any key to exit', 'MoreMsg' },
  }, true, {})
end