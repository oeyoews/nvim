--[=[

local ok, hop = pcall(require, "hop")

if not ok then
  return false
end

hop.setup()

--  TODO this vim.cmd have some format question
--  like [[ ]] in same line
vim.cmd('nno <silent> <space>jj :HopWord<cr>')
--]=]
