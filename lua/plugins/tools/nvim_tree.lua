local ok, nvim_tree = pcall(require, "nvim-tree")

if not ok then
  vim.notify "nvim-tree not founded"
  return
end

nvim_tree.setup {}
