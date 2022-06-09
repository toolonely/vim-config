" mappings
" map fzf's :BLines to //
map // :BLines<CR>
" redefine Ctrl-x Ctrl-f to get fuzzy fulename completion in insert mode
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('ls -1')
" remap Ctrl-p to show files with fzf (bye Ctrl-P plugin)
map <c-p> :Files<cr>

