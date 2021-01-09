set tabstop=4
set shiftwidth=4
set expandtab
set number
set splitbelow
syntax on

"set .jsx filetypes to javascript.jsx
au BufNewFile,BufRead *.jsx	setf javascript.jsx

"keybindings
let mapleader = ","
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

"vim-plug stuff
call plug#begin('~/.local/share/nvim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
Plug 'wokalski/autocomplete-flow'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'vimwiki/vimwiki'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'mxw/vim-jsx'
call plug#end()

"deoplete
let g:deoplete#enable_at_startup = 1 "required
" let g:deoplete#disable_auto_complete = 1
"disable autocomplete on text in buffer
call deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer']})
"maximum candidate window length
call deoplete#custom#source('_', 'max_menu_width', 80)
"hide when select autocomplete 
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
"emmet-vim
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript.jsx EmmetInstall

"language specific
autocmd FileType python setl makeprg=python3\ %
autocmd Filetype perl setl makeprg=perl\ %
autocmd FileType javascript setl makeprg=node\ %
autocmd FileType javascript,javascript.jsx,css,html,json setl shiftwidth=2 tabstop=2
