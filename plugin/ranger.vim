" ================ Ranger =======================
if exists('g:ranger_choice_file')
  if empty(glob(g:ranger_choice_file))
    let s:choice_file_path = g:ranger_choice_file
  else
    echom "Message from *Ranger.vim* :"
    echom "You've set the g:ranger_choice_file variable."
    echom "Please use the path for a file that does not already exist."
    echom "Using /tmp/chosenfile for now..."
  endif
endif

if exists('g:ranger_command_override')
  let s:ranger_command = g:ranger_command_override
else
  let s:ranger_command = 'ranger'
endif

if !exists('s:choice_file_path')
  let s:choice_file_path = '/tmp/chosenfile'
endif

if has('nvim')
  function! OpenRangerIn(path, edit_cmd)
    let currentPath = expand(a:path)
    let rangerCallback = { 'name': 'ranger', 'edit_cmd': a:edit_cmd }
    function! rangerCallback.on_exit(job_id, code, event)
      if a:code == 0
        silent! Bclose!
      endif
      try
        if filereadable(s:choice_file_path)
          for f in readfile(s:choice_file_path)
            exec self.edit_cmd . f
          endfor
          call delete(s:choice_file_path)
        endif
      endtry
    endfunction
    enew
    if isdirectory(currentPath)
      call termopen(s:ranger_command . ' --choosefiles=' . s:choice_file_path . ' "' . currentPath . '"', rangerCallback)
    else
      call termopen(s:ranger_command . ' --choosefiles=' . s:choice_file_path . ' --selectfile="' . currentPath . '"', rangerCallback)
    endif
    startinsert
  endfunction
else
  function! OpenRangerIn(path, edit_cmd)
    let currentPath = expand(a:path)
    if isdirectory(currentPath)
      silent exec '!' . s:ranger_command . ' --choosefiles=' . s:choice_file_path . ' "' . currentPath . '"'
    else
      silent exec '!' . s:ranger_command . ' --choosefiles=' . s:choice_file_path . ' --selectfile="' . currentPath . '"'
    endif
    if filereadable(s:choice_file_path)
      for f in readfile(s:choice_file_path)
        exec a:edit_cmd . f
      endfor
      call delete(s:choice_file_path)
    endif
    redraw!
    " reset the filetype to fix the issue that happens
    " when opening ranger on VimEnter (with `vim .`)
    filetype detect
  endfun
endif

" For backwards-compatibility (deprecated)
if exists('g:ranger_open_new_tab') && g:ranger_open_new_tab
  let s:default_edit_cmd='tabedit '
else
  let s:default_edit_cmd='edit '
endif

command! RangerCurrentFile call OpenRangerIn("%", s:default_edit_cmd)
command! RangerCurrentDirectory call OpenRangerIn("%:p:h", s:default_edit_cmd)
command! RangerWorkingDirectory call OpenRangerIn(".", s:default_edit_cmd)
command! Ranger RangerCurrentFile

" To open the selected file in a new tab
command! RangerCurrentFileNewTab call OpenRangerIn("%", 'tabedit ')
command! RangerCurrentFileExistingOrNewTab call OpenRangerIn("%", 'tab drop ')
command! RangerCurrentDirectoryNewTab call OpenRangerIn("%:p:h", 'tabedit ')
command! RangerCurrentDirectoryExistingOrNewTab call OpenRangerIn("%:p:h", 'tab drop ')
command! RangerWorkingDirectoryNewTab call OpenRangerIn(".", 'tabedit ')
command! RangerWorkingDirectoryExistingOrNewTab call OpenRangerIn(".", 'tab drop ')
command! RangerNewTab RangerCurrentDirectoryNewTab

" For retro-compatibility
function! OpenRanger()
  Ranger
endfunction

" Open Ranger in the directory passed by argument
function! OpenRangerOnVimLoadDir(argv_path)
  let path = expand(a:argv_path)

  " Delete empty buffer created by vim
  Bclose!

  " Open Ranger
  call OpenRangerIn(path, 'edit')
  setlocal nornu nonu
endfunction


" ranger need install bclose.vim
let g:ranger_replace_netrw = 1
" To open ranger when vim load a directory
if exists('g:ranger_replace_netrw') && g:ranger_replace_netrw
  augroup ReplaceNetrwByRangerVim
    autocmd VimEnter * silent! autocmd! FileExplorer
    autocmd BufEnter * if isdirectory(expand("%")) | call OpenRangerOnVimLoadDir("%") | endif
  augroup END
endif

" NOTE: it conflict to terminal.vim, feedkeys i
if !exists('g:ranger_map_keys') || g:ranger_map_keys
  nnoremap <silent> <leader>fT <cmd>Ranger<CR><cmd>setlocal nornu nonu nospell<cr>
endif
