" save undo info to custom location
" /tmp is UNIX/Linux only
let $TMP = "/tmp"
let vim_undo_dir = $TMP . "/" . $USER . "-" . "vim-undo"
if !isdirectory(vim_undo_dir)
    call mkdir(vim_undo_dir, "p", 0700)
endif
let &undodir = vim_undo_dir
set undofile

