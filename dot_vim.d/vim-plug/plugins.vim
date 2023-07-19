" install vim-plug if not already installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    " bar at bottom + theme
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " gruvbox
    Plug 'morhetz/gruvbox'

    " everforest theme
    Plug 'sainnhe/everforest'

    " close quotes and brackets when opened
    "Plug 'jiangmiao/auto-pairs'

    " close tags
    Plug 'alvan/vim-closetag'
    
    " comment toggle
    Plug 'scrooloose/nerdcommenter'

    " split/join
    Plug 'AndrewRadev/splitjoin.vim'

    " code snippets
    Plug 'SirVer/ultisnips'
    
    " expand to html
    Plug 'mattn/emmet-vim'
    
    " change surrounding quotes/tags/brackets   
    Plug 'tpope/vim-surround'

    " alternate header files
    Plug 'ton/vim-alternate'

    " prettier for vim
    Plug 'prettier/vim-prettier', { 'do': 'npm install' }
    
    " code highlighting for JS and JSX
    Plug 'yuezk/vim-js'
    Plug 'mxw/vim-jsx'

    " ranger file explorer
    Plug 'Mizuchi/vim-ranger'

    " nerdtree
    Plug 'preservim/nerdtree'    

    "fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " git wrapper
    Plug 'tpope/vim-fugitive'    

    "UNIX Stuff
    Plug 'tpope/vim-eunuch'    

    "Go
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    "Rust
    Plug 'rust-lang/rust.vim'

    "LaTeX
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

    "Markdown
    Plug 'godlygeek/tabular'
    Plug 'preservim/vim-markdown'

    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()
