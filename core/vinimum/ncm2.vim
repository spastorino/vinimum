" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
let g:ncm2#auto_popup = 1

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
