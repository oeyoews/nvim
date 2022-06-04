local colorizer_ok, colorizer = pcall(require, "colorizer")

if not colorizer_ok then
  return false
end

colorizer.setup()
