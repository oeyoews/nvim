local hop = require("hop")

hop.setup()

keymap = {
  hopmap = {
    ["<leader>"] = {
      h = {
        name = "Hop",
        w = { "<cmd>HopWord<cr>", "Hop Word" },
        l = { "<cmd>HopLine<cr>", "Hop Line" },
        a = { "<cmd>HopAnywhere<cr>", "Hop Anywhere" },
      }
    }, }
}

local which_key = require("which-key")

which_key.register(keymap.hopmap)
