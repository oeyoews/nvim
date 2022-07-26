local high_str = require("high-str")

high_str.setup({
  verbosity = 0,
  saving_path = "/tmp/highstr/",
  highlight_colors = {
    -- color_id = {"bg_hex_code",<"fg_hex_code"/"smart">}
    color_0 = { "#0c0d0e", "smart" }, -- Cosmic charcoal
    color_1 = { "#e5c07b", "smart" }, -- Pastel yellow
    color_2 = { "#7FFFD4", "smart" }, -- Aqua menthe
    color_3 = { "#8A2BE2", "smart" }, -- Proton purple
    color_4 = { "#FF4500", "smart" }, -- Orange red
    color_5 = { "#008000", "smart" }, -- Office green
    color_6 = { "#0000FF", "smart" }, -- Just blue
    color_7 = { "#FFC0CB", "smart" }, -- Blush pink
    color_8 = { "#FFF9E3", "smart" }, -- Cosmic latte
    color_9 = { "#7d5c34", "smart" }, -- Follow brown
  },
})

vim.keymap.set("n", "<space>hL", "vaw:<c-u>HSHighlight 2<cr>", { desc = "vaw highlight" })
vim.keymap.set("n", "<f3>", ":<c-u>HSHighlight 2<CR><cr>", { desc = "" })
vim.keymap.set("v", "<f4>", "<cmd><c-u>HSRmHighlight<cr>", { desc = "" })
vim.keymap.set("n", "<space>cl", "V:<c-u>HSRmHighlight<cr>", { desc = "" })
