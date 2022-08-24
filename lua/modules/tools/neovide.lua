-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   neovide.lua                                                              --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/24 20:42:20 by oeyoews                                  --
--   Updated: 2022/08/25 07:42:22 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

if vim.g.neovide then
  -- vim.g.neovide_transparency = 1.0
  -- vim.g.neovide_cursor_vfx_mode = ""

  vim.g.neovide_input_use_logo = true
  vim.g.neovide_underline_automatic_scaling = false
  vim.g.gui_font_default_size = 24
  vim.g.gui_font_size = vim.g.gui_font_default_size
  vim.g.gui_font_face = "Cascadia Mono"
  vim.g.neovide_scroll_animation_length = 0.01
  vim.g.neovide_cursor_animation_length = 0.03
  vim.g.neovide_fullscreen = true
  vim.g.neovide_confirm_quit = true -- conflict sys
  vim.g.neovide_remember_window_size = true

  RefreshGuiFont = function()
    vim.opt.guifont = string.format("%s:h%s", vim.g.gui_font_face, vim.g.gui_font_size)
  end

  ResizeGuiFont = function(delta)
    vim.g.gui_font_size = vim.g.gui_font_size + delta
    RefreshGuiFont()
  end

  ResetGuiFont = function()
    vim.g.gui_font_size = vim.g.gui_font_default_size
    RefreshGuiFont()
  end

  -- Call function on startup to set default value
  ResetGuiFont()

  -- Keymaps

  local opts = { noremap = true, silent = true }

  vim.keymap.set({ "n", "i" }, "<C-=>", function()
    ResizeGuiFont(1)
  end, opts)
  vim.keymap.set({ "n", "i" }, "<C-->", function()
    ResizeGuiFont(-1)
  end, opts)

  -- TODO: add ctrl-0
  --[=[ vim.keymap.set({ "n", "i" }, "<C-0>", function()
  ResizeGuiFont()
end, opts) --]=]
end
