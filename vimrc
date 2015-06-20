" Include user's local vim before config
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

""
"" Basic Setup
""

set nocompatible                  " use vim, no vi defaults
set history=50                    " keep 50 commands and 50 search patterns in the history
set ruler                         " show line and column number
syntax on                         " turn on syntax highlighting allowing local overrides
set encoding=utf-8                " set default encoding to UTF-8
set showcmd                       " display incomplete commands
set number                        " show line numbers
map Q gq                          " defines the "Q" command to do formatting with the "gq" operator

set clipboard=unnamed

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

map <Leader>rt :!ctags -R *<CR><CR>


""
"" Whitespace
""

set wrap                          " wrap lines, use set nowrap to avoid wrapping
set softtabstop=2                 " use mix of spaces and tabs
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set backspace=indent,eol,start    " backspace through everything in insert mode
let ruby_space_errors=1
let c_space_errors=1


""
"" Searching
""

set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
set incsearch   " incremental searching
set hlsearch    " highlight matches with the last used search pattern
nnoremap <CR> :noh<CR><CR>


""
"" File types
""

" Some file types should wrap their text
function! s:setupWrapping()
  set wrap
  set linebreak
  set textwidth=72
  set nolist
endfunction


set autoindent            " use the indent of the previous line for a newly created line

filetype plugin indent on " turn on filetype plugins (:help filetype-plugin)

" use real tabs ...
autocmd FileType make set noexpandtab
autocmd FileType python set noexpandtab
autocmd FileType c setl tabstop=8 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType ruby setl nowrap tabstop=8 shiftwidth=2 textwidth=0 expandtab
autocmd FileType cpp set noexpandtab

" Set the Ruby filetype for a number of common Ruby files without .rb
autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,config.ru,*.rake} set filetype=ruby

" Make sure all markdown files have the correct filetype set and setup wrapping
autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown | call s:setupWrapping()

" Treat JSON files like JavaScript
autocmd BufNewFile,BufRead *.json set filetype=javascript

autocmd BufNewFile,BufRead *.flex set filetype=lex

" Remember last location in file, but not for commit messages.
" see :help last-position-jump
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Turn on spell checking for git commits
autocmd FileType gitcommit setlocal spell

""
"" Wild settings
""

set wildmode=list:longest           " list all matches and complete till longest common string

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
" Ignore bundler and sass cache
set wildignore+=*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
" Disable temp and backup files
set wildignore+=*.swp,*~,._*


""
"" Backup and swap files
""

set backupdir=~/.vim/tmp/backup/    " where to put backup files.
set directory=~/.vim/tmp/swap/      " where to put swap files.


""
"" Persistent Undo
""

set undofile
set undodir=~/.vim/tmp/undo


""
"" Status line
""

set laststatus=2

set statusline=
set statusline+=\ \[%n]\                     "Buffer number
set statusline+=%<%f\                        "File
set statusline+=%m%r%h%q%w\                  "Modified? Readonly? Help? Quickfix? Preview?
set statusline+=%{SyntasticStatuslineFlag()} "Add syntastic if enabled
set statusline+=%{fugitive#statusline()}\    "Add fugitive if enabled
set statusline+=%y\                          "FileType
set statusline+=[%{&fenc!=''?&fenc:&enc}     "Encoding
set statusline+=%{(&bomb?',bom':'')}]\       "Encoding2
set statusline+=[%{&ff}]\                    "FileFormat
set statusline+=%=\ Line:%l/%L\ (%p%%)\ \    "Line/total (%)
set statusline+=Column:%c\                   "Column


""
"" NERDTree
""

let g:NERDTreeStatusline = ' '
map <Leader>n :NERDTreeToggle<CR>


""
"" Taglist
""

map <Leader>t :TlistToggle<CR>


""
"" RTFPygmentize
""

" Valid options are: 'default', 'emacs', 'friendly' and 'colorful'
"let g:rtfp_theme = 'colorful'
let g:rtfp_font = 'Consolas'


""
"" Layout
""

if !has("gui_running")
  set t_Co=256
endif
colorscheme railscasts


""
"" Pathogen & extentions
""

exe 'source ' . expand('~/.vim/') . 'core/pathogen/autoload/pathogen.vim'
call pathogen#infect('indent/{}')
call pathogen#infect('plugins/{}')
call pathogen#infect('langs/{}')
Helptags


""
"" Gist
""

let g:gist_clip_command = 'pbcopy'


""
"" GitGutter
""

let g:gitgutter_eager = 0


""
"" Golang
""

if empty($GOPATH)
  let g:go_disable_autoinstall = 1
endif


""
"" ZoomWin
""

map <Leader><Leader> :ZoomWin<CR>


""
"" CtrlP
""

map <C-b> :CtrlPBuffer<CR>


""
"" Bubble lines
""

" single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv


" Include user's local vim after config
if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif
