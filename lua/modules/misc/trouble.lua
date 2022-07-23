local trouble = require("trouble")

trouble.setup()

vim.keymap.set("n", "<space>tt", "<cmd>Trouble<cr>", { desc = "" })
