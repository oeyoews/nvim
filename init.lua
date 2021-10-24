---[[
-- use vimplug
vim.cmd [[ runtime vim/vimplug/plug.vim
runtime vim/vimplug/plugins.vim ]]

-- use locla config
vim.cmd [[ runtime! vim/config/*.vim ]]

--  internal plugins
vim.cmd [[ runtime! vim/plugin/*.vim ]]
--]]

---[[
require("core")
--]]
