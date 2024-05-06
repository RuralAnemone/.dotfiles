" ======== VISUAL ========
set number			" show current line number
set relativenumber		" show relative line number

" ==== from https://superuser.com/a/224862: ====
set hlsearch    " highlight all matched terms
" Pressing return clears highlighted search
:nnoremap <CR> :nohlsearch<CR>/<BS>

" ======== FUNCTIONAL ========
set nocompatible		" no backwards compatibility with vi (never used it so I don't care)
" set hidden			" buffers are hidded instead of discarding (RAM usage go brr)

" ======== PLUGINS ========
source ~/.vim-plug.vim
source ~/.config/nvim/lazy.lua
source ~/.vundlerc.vim
