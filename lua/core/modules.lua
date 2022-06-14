local package = 'plugins' -- load package

local modules = {
  enable_modules = {
    'plugins', -- install plugin list
    'perfect', -- performance
    'tools', -- some tools
    'themes', -- some themes
    'ui', -- ui configuration
    'lsp', -- lsp settings
  },
}

for _, load_module in ipairs(modules.enable_modules) do
  require(package .. '.' .. load_module)
end
