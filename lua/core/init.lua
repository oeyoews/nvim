-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   init.lua                                                                 --
--                                                                            --
--   By: oeyoews <mail>                                                       --
--                                                                            --
--   Created: 2023/01/22 18:33:39 by oeyoews                                  --
--   Updated: 2023/06/28 09:13:24 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

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
