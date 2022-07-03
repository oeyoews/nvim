require("core")
require("run-code").setup({
  output = {
    buffer = true,
    split_cmd = "20split",
  },
})

-- optional custom variables
require("run-code.vars").add_vars({
  str = "test-val-2",
  num = 3,
  bool = true,
  var_with_func = function()
    -- the value of this var is computed by running this function at runtime
    return "test-val"
  end,
})
