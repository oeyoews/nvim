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
    ["core.export"] = {},
    ["core.export.markdown"] = {
      config = {
        extensions = "all",
      },
    },
    ["core.defaults"] = {},
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
          work = "~/.cache/notes/work",
        },
      },
    },
  },
})

vim.keymap.set("n", "<space>an", "<cmd>Neorg inject-metadata<cr>", {
  buffer = true,
  silent = true,
  desc = " inject metadata",
})

-- this default keybinds is nice, below is example to custom keymap, no remap
-- ref: https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
-- local prefix_norg_bind = "Neorg keybind norg core.norg.qol.todo_items.todo.task_"
-- vim.keymap.set("n", "<space>gtu", function()
--   vim.cmd(([[%s%s]]):format(prefix_norg_bind, "undone"))
-- end, {
--   buffer = true,
--   silent = true,
--   desc = "toggle undone",
-- })
