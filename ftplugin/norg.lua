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
  ["gth"] = "on_hold",
  ["gtc"] = "cancelled",
  ["gtr"] = "recurring",
  ["gti"] = "important",
  ["<space>"] = "cycle",
  -- no uncertain NOTE: this cmd is not work for uncertain, because no this cmd
}
---[=[
for keymap, item in pairs(items) do
  keymap = string.format("<space>%s", keymap)
  vim.keymap.set("n", keymap, function()
    vim.cmd(("%s%s"):format(prefix_norg_bind, item))
  end, {
    buffer = true,
    silent = true,
    desc = string.format("toggle %s", item),
  })
end

vim.keymap.set("n", "<space>an", "<cmd>Neorg inject-metadata<cr>", {
  -- buffer = true,
  silent = true,
  desc = " inject metadata",
})

vim.keymap.set("n", "<space>tc", "<cmd>Neorg toggle-concealer<cr>", {
  buffer = true,
  silent = true,
  desc = "𝟇 show vanilla content",
})
--]=]
