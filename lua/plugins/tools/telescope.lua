local telescope_ok, telescope = pcall(require, "telescope")

if not telescope_ok then
  vim.notify("telescope not founded")
  return
end

local actions = require("telescope.actions")

local theme = "dropdown"

-- disable preview binaries
local previewers = require("telescope.previewers")

local Job = require("plenary.job")

local new_maker = function(filepath, bufnr, opts)
  filepath = vim.fn.expand(filepath)
  Job
      :new({
        command = "file",
        args = { "--mime-type", "-b", filepath },
        on_exit = function(j)
          local mime_type = vim.split(j:result()[1], "/")[1]
          if mime_type == "text" then
            previewers.buffer_previewer_maker(filepath, bufnr, opts)
          else
            -- maybe we want to write something to the buffer here
            vim.schedule(function()
              vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "BINARY" })
            end)
          end
        end,
      })
      :sync()
end

telescope.setup({
  defaults = {
    mappings = {
      n = { ["q"] = actions.close },
    },
    -- #
    prompt_prefix = "  ",
    --  ➤ 
    selection_caret = " ",
    entry_prefix = "  ",
  },

  -- FIXME: to shorten it
  pickers = {
    find_files = {
      theme = theme,
      --preview = false,
    },
    oldfiles = {
      theme = theme,
    },
    buffers = {
      theme = theme,
    },
    live_grep = {
      theme = theme,
    },
    colorscheme = {
      theme = theme,
    },
    keymaps = {
      theme = theme,
    },
    filetypes = {
      theme = theme,
    },
    current_buffer_fuzzy_find = {
      theme = theme,
    },
  },
})

vim.cmd([[
nnoremap <leader>ff <cmd>Telescope find_files <cr>
nnoremap <leader>to <cmd>Telescope oldfiles <cr>
nnoremap <leader>tbb <cmd>Telescope buffers <cr>
nnoremap <leader>tc <Cmd>Telescope colorscheme <Cr>

" search string in current dir
nnoremap <leader>ps <Cmd>Telescope live_grep<Cr>

nnoremap <leader>tm <cmd>Telescope keymaps<cr>
" nnoremap <leader>ss <cmd>Telescope current_buffer_fuzzy_find<cr>

" nnoremap <C-k> <cmd>lua vim.lsp.buf.signature_help() <cr>

" Border highlight groups
highlight TelescopeBorder         guifg=#bd93f9
highlight TelescopePromptBorder   guifg=#bd93f9
highlight TelescopeResultsBorder  guifg=#bd93f9
highlight TelescopePreviewBorder  guifg=#bd93f9

" Color the prompt prefix
" highlight TelescopePromptPrefix   guifg=green
]])
