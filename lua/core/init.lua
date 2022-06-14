local core = 'core/' -- require package

local modules = {
  'mappings', -- basic mappings
  'options', -- basic options
  'modules', -- enable modules
}

-- load module
for _, load_module in ipairs(modules) do
  require(core .. load_module)
end
