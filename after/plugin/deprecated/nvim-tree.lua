--[[

local ok, nvim_tree = pcall(require, "nvim-tree")

if not ok then
  vim.notify("nvim-tree plugin not installed")
  return false
end

nvim_tree.setup({})

vim.cmd [[
nnoremap <silent> <leader>fn :NvimTreeToggle<cr>
]]

--]]
