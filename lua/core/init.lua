local package = 'core' -- require package

local modules = {
  'options', -- basic options
  'mappings', -- basic mappings
  'modules', -- enable modules
}

-- load module
for _, load_module in ipairs(modules) do
  require(package .. '.' .. load_module)
end

-- disable to read shadafile
vim.opt.shadafile = "NONE"
