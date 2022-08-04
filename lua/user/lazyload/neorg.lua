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
-- because this load order(maybe), this override can't true
local prefix_norg_bind = "Neorg keybind norg core.norg.qol.todo_items.todo.task_"

-- gt is tab next shortkey, in neorg mode, this is conflict, so add localeader prefix
-- and add desc for this keybindings
-- need to disable neorg default keybinds
local items = {
  ["gtu"] = "undone",
  ["gtd"] = "done",
  ["gtp"] = "pending",
  ["gth"] = "hold",
  ["gtc"] = "cancelled",
  ["gtr"] = "recurring",
  ["gti"] = "important",
  -- cycle not set
}

for keymap, item in pairs(items) do
  keymap = string.format("<space>%s", keymap)
  vim.keymap.set("n", keymap, function()
    vim.cmd(([[%s%s]]):format(prefix_norg_bind, item))
  end, {
    buffer = true,
    silent = true,
    desc = string.format("toggle %s", item),
  })
end
