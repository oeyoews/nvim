if not pcall(require, "nvim-tree") then
  return
else
  require 'nvim-tree'.setup()
end
