--[[
vim: set noma:
--]]

vim.cmd [[ runtime vim/autoload/plug.vim ]]
vim.cmd [[ runtime! vim/config/*.vim ]]
vim.cmd [[ runtime! vim/plugin/*.vim ]]

require("core")
