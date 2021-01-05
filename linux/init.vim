set tabstop=4
set shiftwidth=4
set expandtab
set number
set splitbelow
syntax on

"keybindings
let mapleader = ","

"vim-plug stuff
call plug#begin('~/.local/share/nvim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'tmhedberg/SimpylFold'
Plug 'vimwiki/vimwiki'
call plug#end()

"deoplete
let g:deoplete#enable_at_startup = 1 "required
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"scroll with tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"vim-airline
let g:airline_theme='minimalist'

"vimwiki
set nocompatible
filetype plugin on
"syntax on (done above)

let g:vimwiki_list = [{'path': '~/Documents/notes',
                     \ 'syntax': 'markdown', 'ext': '.md'}
                     \]

"language specific
autocmd FileType python setl makeprg=python3\ %
autocmd Filetype perl setl makeprg=perl\ %
autocmd FileType javascript setl makeprg=node\ %
