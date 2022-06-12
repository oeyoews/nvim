local ok, neorg = pcall(require, "neorg")

if not ok then
  vim.notify('neorg not founded')
  return false
end

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
    ["core.defaults"] = {},
    ["core.norg.concealer"] = {
      config = {}
    },
    ["core.norg.completion"] = {
      config = {
        engine = "nvim-cmp"
      }
    },
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          work = "~/.cache/notes/work",
          home = "~/.cache/notes/home",
        }
      }
    }
  }
})