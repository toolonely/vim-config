" install vim-plug if it's not installed
" only install the plugin manager itself
" the plugins it manages will be installed manually
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -sfLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

" colorschemes

Plug 'barlog-m/oceanic-primal-vim'
Plug 'nightsense/cosmic_latte'
Plug 'cocopon/iceberg.vim'
Plug 'croaker/mustang-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'fcpg/vim-fahrenheit'
Plug 'Jorengarenar/vim-darkness'
Plug 'fcpg/vim-orbital'

" todo.txt
Plug 'freitass/todo.txt-vim'

call plug#end()
