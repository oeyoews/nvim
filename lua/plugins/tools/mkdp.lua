vim.cmd([[
let g:mkdp_echo_preview_url = 1
" let g:mkdp_open_to_the_world = 1  -- nedd network
let g:mkdp_filetypes = [ 'markdown', 'txt', 'html']
let g:mkdp_theme = 'dark'
let g:mkdp_port = '8099'
let g:mkdp_page_title = '「${name}」'

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''
let g:mkdp_browser = ''
let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle',
      \ 'hide_yaml_meta': 1,
      \ 'sequence_diagrams': {},
      \ 'flowchart_diagrams': {},
      \ 'content_editable': v:false,
      \ 'disable_filename': 0,
      \ 'toc': {}
      \ }

augroup markdownpreview
  autocmd!
  autocmd FileType markdown,html,txt nnoremap <silent> <leader>fmm :MarkdownPreviewToggle<CR>
augroup END
]])
