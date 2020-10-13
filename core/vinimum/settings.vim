""
"" General settings
""

set lazyredraw
set number relativenumber
set shortmess+=c

""
"" Whitespace
""

set listchars=tab:▸\ ,eol:¬,precedes:<,extends:>
let c_space_errors=1


""
"" Wild settings
""

" Completion mode, when more than one match, list all matches and complete
" till longest common string.
set wildmode=list:longest

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*


""
"" Clipboard & mouse
""

set clipboard=unnamedplus
set mouse=


""
"" Backup and swap files
""

set backupdir=~/.vim/tmp/backup/    " where to put backup files.
set directory=~/.vim/tmp/swap/     " where to put swap files.


""
"" Persistent Undo
""

set undofile
set undodir=~/.vim/tmp/undo/


""
"" Ctags
""

set tags^=./.tags;
