let g:neosnippet#disable_runtime_snippets = {
\   '_' : 1,
\ }
let g:neosnippet#enable_completed_snippet = 1
let g:neosnippet#enable_complete_done = 1
let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets'

imap <C-k>     <Plug>(neosnippet_expand_target)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
imap <expr><C-k> pumvisible() ?
			\ ncm2_neosnippet#expand_or("", 'n')
			\ : "\<Plug>(neosnippet_expand_or_jump)"

