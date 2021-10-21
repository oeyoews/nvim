--[[
vim: set noma:
--]]

---[[
-- use vimplug
vim.cmd [[ runtime vim/autoload/plug.vim
runtime vim/autoload/plugins.vim ]]

-- use locla config
vim.cmd [[ runtime! vim/config/*.vim ]]

--  internal plugins
vim.cmd [[ runtime! vim/plugin/*.vim ]]
--]]

---[[
require("core")
--]]
