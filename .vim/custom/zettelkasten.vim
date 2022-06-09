" personal Zettelkasten
" based on:
" https://www.edwinwenink.xyz/posts/42-vim_notetaking/
" https://www.edwinwenink.xyz/posts/43-notes_tagging/
" https://www.edwinwenink.xyz/posts/48-vim_fast_creating_and_linking_notes/

" go to index note and generate tags
nnoremap <Leader>ni :cd $ZETTELKASTEN_NOTES_DIR<CR>:silent !ctags -R . <CR>:redraw!<CR>:e $ZETTELKASTEN_NOTES_DIR/index.md<CR>

" generate ctags silently
nnoremap <Leader>tt :silent !ctags -R . <CR>:redraw!<CR>

" search tags with fzf
nnoremap <Leader>st :Tags<CR>

" search using ripgrep
command! -nargs=1 Ngrep grep "<args>" -g "*.md" $ZETTELKASTEN_NOTES_DIR
nnoremap <Leader>nn :Ngrep

" open a vertical split with search results
command! Vlist botright vertical copen | vertical resize 50
nnoremap <Leader>v :Vlist<CR>

" so gf always works, on missing files too
:map gf :e <cfile><CR>

