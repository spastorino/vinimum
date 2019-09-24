if has("autocmd")
  " In Makefiles, use real tabs, not tabs expanded to spaces
  autocmd FileType make setlocal noexpandtab

  " Make sure all mardown files have the correct filetype set and setup wrapping
  autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
  if !exists("g:disable_markdown_autostyle")
    autocmd FileType markdown setlocal wrap linebreak textwidth=72 nolist
  endif

  " Turn on spell checking for git commits
  autocmd FileType gitcommit setlocal spell

  " Remember last location in file, but not for commit messages.
  " see :help last-position-jump
  autocmd BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif
endif
