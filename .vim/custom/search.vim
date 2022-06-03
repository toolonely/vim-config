" search
set incsearch " incomplete search matches
set hlsearch " keep search highlight after complete
" Make :grep use ripgrep
" --smart-case does case insensitive searches for all lowercase patterns
if executable('rg')
    set grepprg=rg\ --color=never\ --vimgrep\ --smart-case
endif
