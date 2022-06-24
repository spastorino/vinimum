if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

source $VIMRUNTIME/defaults.vim

source ~/.vim/core/plug/plug.vim
call plug#begin()

" Basics
Plug 'tpope/vim-sensible'

" Lang
Plug 'rhysd/vim-clang-format'
Plug 'fatih/vim-go',                { 'for': 'go' }
Plug 'rust-lang/rust.vim',          { 'for': 'rust' }
Plug 'davidhalter/jedi-vim',        { 'for': 'python' }
Plug 'peitalin/vim-jsx-typescript', { 'for': 'typescriptreact' }
Plug 'pangloss/vim-javascript',     { 'for': 'javascript' }
Plug 'plasticboy/vim-markdown',     { 'for': 'markdown' }
Plug 'jparise/vim-graphql',         { 'for': 'graphql' }
Plug 'cespare/vim-toml',            { 'for': 'toml' }
Plug 'stephpy/vim-yaml',            { 'for': 'yaml' }

" Look & Feel
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

" Editing
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'andymass/vim-matchup'
Plug 'godlygeek/tabular'
Plug 'machakann/vim-highlightedyank'

" Projects
Plug 'tpope/vim-projectionist'

" Tags
Plug 'majutsushi/tagbar'

" Search
Plug 'junegunn/fzf.vim'
Plug 'jesseleite/vim-agriculture'

" Session
Plug 'tpope/vim-obsession'

" Windows
Plug 'tpope/vim-vinegar'

" Run commands
Plug 'tpope/vim-dispatch'

" Git
Plug 'tpope/vim-fugitive'
" Hub
Plug 'tpope/vim-rhubarb'

" Tmux
Plug 'roxma/vim-tmux-clipboard'
Plug 'tmux-plugins/vim-tmux-focus-events'

" Language Server support
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'dev',
    \ 'do': 'make release',
    \ }
Plug 'martskins/lcn-settings'

" Autocomplete
Plug 'ncm2/ncm2'
if !has('nvim')
  Plug 'roxma/nvim-yarp', {
      \ 'do': 'pip3 install pynvim',
      \ }
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ervandew/supertab'

" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'honza/vim-snippets'
Plug 'ncm2/ncm2-neosnippet'

Plug 'ron-rs/ron.vim'

call plug#end()

runtime! core/vinimum/*.vim

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif
