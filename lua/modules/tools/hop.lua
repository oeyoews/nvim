local hop = require("hop")

hop.setup()

--[=[
vim.cmd([[
    nnoremap <leader>hw  <cmd>HopWord<CR>
    nnoremap <leader>hl <cmd>HopLine<cr>
    nnoremap <leader>ha <cmd>HopAnywhere<cr>
]])
--]=]

hop = {
  ["<leader>"] = {
    h = {
      name = "Hop",
      w = { "<cmd>HopWord<cr>", "Hop Word" },
      l = { "<cmd>HopLine<cr>", "Hop Line" },
      a = { "<cmd>HopAnywhere<cr>", "Hop Anywhere" },
    }
  }, }

require("which_key").register(hop)
