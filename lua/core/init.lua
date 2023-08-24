-- check
require("core.bootstrap")

-- modules
require("core.disable")
require("core.oeyoews")
require("core.functions")
require("core.autocmd")
require("core.mappings")
require("core.options")

-- load lazy plugin
require("core.lazy")

if vim.g.vscode then
else
  -- ordinary Neovim
end
