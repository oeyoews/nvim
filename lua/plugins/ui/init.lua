local package = "plugins.ui"

local modules = {
  "indent",
  "bufferline",
  "windline",
  -- 'incline',
}

for _, load_module in ipairs(modules) do
  require(package .. "." .. load_module)
end
