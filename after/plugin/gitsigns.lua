local ok, gitsings = pcall(require, "gitsigns")

if not ok then
  return false
end

gitsings.setup()

