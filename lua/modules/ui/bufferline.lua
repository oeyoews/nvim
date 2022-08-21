require("bufferline").setup({
  options = {
    --[=[ numbers = function(opts)
      return string.format("%s.%s", opts.raise(opts.id), opts.lower(opts.ordinal))
    end, --]=]
    -- For 2.)8.) - change he order of arguments to change the order in the string
    numbers = function(opts)
      return string.format("%s", opts.ordinal)
    end,
  },
})

vim.keymap.set("n", "<space>bp", "<cmd>BufferLinePick<cr>", {
  desc = "ﴳ pick tabline",
})

if oeyoews.options.enable_zen_mode then
  vim.cmd([[
  set laststatus=0
  " set showtabline=0
  ]])
end
