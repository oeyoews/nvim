-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   neorg.lua                                                                --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/06 12:49:48 by oeyoews                                  --
--   Updated: 2022/10/21 22:27:52 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- require("modules.tools.neorg")
-- Neorg sync-parsers
-- bug: repeat run it
local neorg = require("neorg")

local function load_completion()
  neorg.modules.load_module("core.norg.completion", nil, {
    engine = "nvim-cmp", -- Choose your completion engine here
  })
end

---[[
-- If Neorg is loaded already then don't hesitate and load the completion
if neorg.is_loaded() then
  load_completion()
else -- Otherwise wait until Neorg gets started and load the completion module then
  neorg.callbacks.on_event("core.started", load_completion)
end
--]]

neorg.setup({
  load = {
    ["core.defaults"] = {},
    ["core.keybinds"] = {
      config = {
        default_keybinds = false,
      },
    },
    ["core.norg.concealer"] = {
      config = {},
    },
    ["core.norg.completion"] = {
      config = {
        engine = "nvim-cmp",
      },
    },
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          tmp = "/tmp/neorg/",
        },
      },
    },
  },
})
