" install vim-plug if it's not installed
" only install the plugin manager itself
" the plugins it manages will be installed manually
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -sfLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" make vim load python3 dynamically, so YCM sees it
if has('python3')
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

" other
" general purpose
Plug 'vim-airline/vim-airline' " vim airline (lightweight status line)
Plug 'edkolev/promptline.vim' " sync shell prompt with airline status line
Plug 'vim-voom/VOoM' " vim outliner
Plug 'vimwiki/vimwiki', { 'branch' : 'dev' } " vimwiki
Plug 'isene/hyperlist.vim' " hyperlink
Plug 'ludovicchabant/vim-gutentags' " gutentags
Plug 'junegunn/limelight.vim' " limelight
Plug 'drmikehenry/vim-fontsize' " adjust Gvim font size via keypresses 
Plug 'majutsushi/tagbar' " tagbar
Plug 'liuchengxu/vista.vim' " vista - modern tagbar replacement
                            " with LSP support
Plug 'tomtom/tcomment_vim' " tcomment
Plug 'tpope/vim-unimpaired' " handy bracket mappings
" window management
Plug 'vim-scripts/ZoomWin' " zoom a window in and out
Plug 'roman/golden-ratio' " auto-resize windows to golden ratio
" search/replace
Plug 'junegunn/fzf.vim' " fzf.vim
Plug 'mhinz/vim-grepper' " asynchronous search
Plug 'markonm/traces.vim' " range, pattern and substitute preview
" marks/bookmarks
Plug 'kshenoy/vim-signature' " marks manager
Plug 'MattesGroeger/vim-bookmarks' " bookmarks/annotations plugin
" folding
Plug 'Konfekt/FastFold' " fastfold
" project settings
Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/local_vimrc'
" programming
" general
Plug 'sheerun/vim-polyglot' " language pack
Plug 'jaxbot/semantic-highlight.vim' " semantic highlight
" vcs
Plug 'mhinz/vim-signify' " markers for versioned files
Plug 'tpope/vim-fugitive' " git wrapper
" python
Plug 'tmhedberg/SimpylFold' " simpylfold
" Plug 'vim-syntastic/syntastic' " syntastic - replaced by ale in vim8
Plug 'w0rp/ale' " ale - replacement for syntastic
Plug 'metakirby5/codi.vim' " codi - REPL with multiple language support

" task management
Plug 'blindFS/vim-taskwarrior' " taskwarrior
Plug 'framallo/taskwarrior.vim' " taskwarrior syntax files
" vim-vdt (GDT plugin)
Plug 'google/maktaba'
Plug 'google/glaive', {'do': ':call glaive#Install()'}
Plug 'chiphogg/vim-vtd'

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') } " YouCompleteMe

" ycm
Plug 'prabirshrestha/vim-lsp' " async lsp support
Plug 'mattn/vim-lsp-settings' " lsp auto-configs
Plug 'prabirshrestha/asyncomplete.vim' " async completion
Plug 'prabirshrestha/asyncomplete-lsp.vim' " lsp source 

call plug#end()
