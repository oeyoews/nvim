local ok, gitsigns = pcall(require, "gitsigns")

if not ok then
  return false
end

gitsigns.setup()
