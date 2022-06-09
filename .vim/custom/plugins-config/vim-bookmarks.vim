" vim-bookmarks
" save bookmarks per working directory/project
let g:bookmark_save_per_working_dir = 1
" auto load/save the bookmarks file whenever buffer changes
let g:bookmark_auto_save = 1

" suggested mappings from help
" default mappings that use m instead of <Leader> overwrite marks mappings
nmap <Leader><Leader> <Plug>BookmarkToggle
nmap <Leader>i <Plug>BookmarkAnnotate
nmap <Leader>a <Plug>BookmarkShowAll
nmap <Leader>j <Plug>BookmarkNext
nmap <Leader>k <Plug>BookmarkPrev
nmap <Leader>c <Plug>BookmarkClear
nmap <Leader>x <Plug>BookmarkClearAll

" these will also work with a [count] prefix
nmap <Leader>kk <Plug>BookmarkMoveUp
nmap <Leader>jj <Plug>BookmarkMoveDown
nmap <Leader>g <Plug>BookmarkMoveToLine
