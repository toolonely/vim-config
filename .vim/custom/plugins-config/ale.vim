" ale
" make pylint recognize modules in the same directory
let g:ale_python_pylint_options = "--init-hook='import sys; sys.path.append(\".\")'"
nmap <Leader>n :ALENext<CR>
nmap <Leader>p :ALEPrevious<CR>
