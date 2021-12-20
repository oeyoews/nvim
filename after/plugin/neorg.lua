local ok, neorg = pcall(require, "neorg")

if not ok then
  return false
end

--- Loads the Neorg completion module
local function load_completion()
    neorg.modules.load_module("core.norg.completion", nil, {
        engine = "nvim-cmp" -- Choose your completion engine here
    })
end

-- If Neorg is loaded already then don't hesitate and load the completion
if neorg.is_loaded() then
    load_completion()
else -- Otherwise wait until Neorg gets started and load the completion module then
    neorg.callbacks.on_event("core.started", load_completion)
end

neorg.setup({
  load = {
    ["core.norg.completion"] = {
      config = {
        engine = "nvim-cmp" -- We current support nvim-compe and nvim-cmp only
      }
    },
    ["core.defaults"] = {}, -- Load all the default modules
    -- have bug: will show extra stars, this is not a really bug
    ["core.norg.concealer"] = {
      --config = {
        --icons = {
          --todo = {
            --enabled = true,

            --done = {
              --enabled = true,
              --icon = "",
              --pattern = "^(%s*%-%s+%[%s*)x%s*%]%s+",
              --whitespace_index = 1,
              --highlight = "NeorgTodoItemDoneMark",
              --padding_before = 0,
            --},

            --pending = {
              --enabled = true,
              --icon = "",
              --pattern = "^(%s*%-%s+%[%s*)%*%s*%]%s+",
              --whitespace_index = 1,
              --highlight = "NeorgTodoItemPendingMark",
              --padding_before = 0,
            --},

            --undone = {
              --enabled = true,
              --icon = "×",
              --pattern = "^(%s*%-%s+%[)%s+]%s+",
              --whitespace_index = 1,
              --highlight = "TSComment",
              --padding_before = 0,
            --}
          --},

          --quote = {
            --enabled = true,
            --icon = "∣",
            --pattern = "^(%s*)>%s+",
            --whitespace_index = 1,
            --highlight = "NeorgQuote",
            --padding_before = 0,
          --},

          --heading = {
            --enabled = true,

            --level_1 = {
              --enabled = true,
              --icon = "◉",
              --pattern = "^(%s*)%*%s+",
              --whitespace_index = 1,
              --highlight = "NeorgHeading1",
              --padding_before = 0,
            --},

            --level_2 = {
              --enabled = true,
              --icon = "○",
              --pattern = "^(%s*)%*%*%s+",
              --whitespace_index = 1,
              --highlight = "NeorgHeading2",
              --padding_before = 1,
            --},

            --level_3 = {
              --enabled = true,
              --icon = "✿",
              --pattern = "^(%s*)%*%*%*%s+",
              --whitespace_index = 1,
              --highlight = "NeorgHeading3",
              --padding_before = 2,
            --},

            --level_4 = {
              --enabled = true,
              --icon = "•",
              --pattern = "^(%s*)%*%*%*%*%s+",
              --whitespace_index = 1,
              --highlight = "NeorgHeading4",
              --padding_before = 3,
            --},
          --},

          --marker = {
            --enabled = true,
            --icon = "",
            --pattern = "^(%s*)%|%s+",
            --whitespace_index = 1,
            --highlight = "NeorgMarker",
            --padding_before = 0,
          --},
        --},
      --}
    }, -- Allows for use of icons
    ["core.norg.dirman"] = { -- Manage your directories with Neorg
    config = {
      workspaces = {
        my_workspace = "~/dotfiles/notes/todo/",
        temp = "/tmp/neorg"
      },
      -- Automatically detect whenever we have entered a subdirectory of a workspace
      autodetect = true,
      -- Automatically change the directory to the root of the workspace every time
      autochdir = true,
    },

  },

},
})

--- add three parser
local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
  install_info = {
    url = "https://github.com/nvim-neorg/tree-sitter-norg",
    files = { "src/parser.c", "src/scanner.cc" },
    branch = "main"
  },
}

parser_configs.norg_meta = {
  install_info = {
    url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
    files = { "src/parser.c" },
    branch = "main"
  },
}

parser_configs.norg_table = {
  install_info = {
    url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
    files = { "src/parser.c" },
    branch = "main"
  },
}

--[[

vim.cmd [[
nnoremap <silent> <leader>nn <cmd>NeorgStart<cr>
]]
--]]


-- This sets the leader for all Neorg keybinds. It is separate from the regular <Leader>,
-- And allows you to shove every Neorg keybind under one "umbrella".
local neorg_leader = "<Leader>" -- You may also want to set this to <Leader>o for "organization"

-- Require the user callbacks module, which allows us to tap into the core of Neorg
local neorg_callbacks = require('neorg.callbacks')

-- Listen for the enable_keybinds event, which signals a "ready" state meaning we can bind keys.
-- This hook will be called several times, e.g. whenever the Neorg Mode changes or an event that
-- needs to reevaluate all the bound keys is invoked
neorg_callbacks.on_event("core.keybinds.events.enable_keybinds", function(_, keybinds)

  -- Map all the below keybinds only when the "norg" mode is active
  keybinds.map_event_to_mode("norg", {
    n = { -- Bind keys in normal mode

    -- Keys for managing TODO items and setting their states
    -- is confilcted to jump next new table
    --{ "gtd", "core.norg.qol.todo_items.todo.task_done" },
    --{ "gtu", "core.norg.qol.todo_items.todo.task_undone" },
    --{ "gtp", "core.norg.qol.todo_items.todo.task_pending" },
    { "<space>tn", "core.norg.qol.todo_items.todo.task_cycle" }

  },
}, { silent = true, noremap = true })

end)

vim.cmd[[ ]]
