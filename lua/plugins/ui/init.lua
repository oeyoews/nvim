local package = 'plugins.ui'

local modules = {
  'bufferline',
  'windline',
  -- 'shade',
  -- 'beacon',
  'incline',
}

for _, load_module in ipairs(modules) do
  require(package .. "." .. load_module)
end
