local ok, colorizer = pcall(require, "colorizer")

if not ok then
  return false
end

colorizer.setup()
