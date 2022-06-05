local telescope_ok, telescope = pcall(require, "telescope")

if not telescope_ok then
  return false
end

local actions = require('telescope.actions')

-- disable preview binaries
local previewers = require("telescope.previewers")
local Job = require("plenary.job")
local new_maker = function(filepath, bufnr, opts)
  filepath = vim.fn.expand(filepath)
  Job:new({
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
    end
  }):sync()
end

telescope.setup {
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

  pickers = {
    find_files = {
      theme = "dropdown",
      --preview = false,
    },
    oldfiles = {
      theme = "dropdown"
    },
    buffers = {
      theme = "ivy"
    },
    live_grep = {
      theme = "ivy"
    },
    colorscheme = {
      theme = "ivy"
    },
    keymaps = {
      theme = "ivy"
    },
    filetypes = {
      theme = "dropdown"
    },
    current_buffer_fuzzy_find = {
      theme = "ivy"
    }
  },

  extensions = {
    --fzf = {
    --fuzzy = true,                    -- false will only do exact matching
    --override_generic_sorter = true,  -- override the generic sorter
    --override_file_sorter = true,     -- override the file sorter
    --case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    ---- the default case_mode is "smart_case"
    --},
    --fzy_native = {
    --override_generic_sorter = false,
    --override_file_sorter = true,
    --}

  },

}

--require('telescope').load_extension('fzf')
--require('telescope').load_extension('fzy_native')

vim.cmd [[
nnoremap <leader>ff <cmd>Telescope find_files <cr>
nnoremap <leader>tr <cmd>Telescope oldfiles <cr>
nnoremap <leader>tbb <cmd>Telescope buffers <cr>
nnoremap <leader>tc <Cmd>Telescope colorscheme <Cr>

" search string in current dir
nnoremap <leader>ps <Cmd>Telescope live_grep<Cr>

nnoremap <leader>tm <cmd>Telescope keymaps<cr>
nnoremap <leader>tf <cmd>Telescope file_browser<cr>
" nnoremap <leader>ss <cmd>Telescope current_buffer_fuzzy_find<cr>

" nnoremap <C-k> <cmd>lua vim.lsp.buf.signature_help() <cr>

" Border highlight groups
highlight TelescopeBorder         guifg=#bd93f9
highlight TelescopePromptBorder   guifg=#bd93f9
highlight TelescopeResultsBorder  guifg=#bd93f9
highlight TelescopePreviewBorder  guifg=#bd93f9

" Color the prompt prefix
" highlight TelescopePromptPrefix   guifg=green
]]
