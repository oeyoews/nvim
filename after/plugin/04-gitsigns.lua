local gitsigns_ok, gitsigns = pcall(require, "gitsigns")

if not gitsigns_ok then
  return false
end

gitsigns.setup()
