if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

source $VIMRUNTIME/defaults.vim

source ~/.vim/core/plug/plug.vim
call plug#begin()
" Lang
Plug 'rust-lang/rust.vim'

" Colors
Plug 'morhetz/gruvbox'

" Tools
Plug 'w0rp/ale'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'jesseleite/vim-agriculture'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'prabirshrestha/vim-lsp'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sensible'
Plug 'honza/vim-snippets'
Plug 'roxma/vim-tmux-clipboard'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-vinegar'
call plug#end()

runtime! core/vinimum/*.vim

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif
