for pf in split(glob('~/.vim/custom/plugins-config/*.vim'), '\n')
  exe 'source' pf
endfor
