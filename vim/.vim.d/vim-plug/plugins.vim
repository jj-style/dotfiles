call plug#begin('~/.vim/plugged')
    " bar at bottom + theme
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " everforest theme
    Plug 'sainnhe/everforest'

    " close quotes and brackets when opened
    "Plug 'jiangmiao/auto-pairs'

    " close tags
    Plug 'alvan/vim-closetag'
    
    " comment toggle
    Plug 'scrooloose/nerdcommenter'
    
    " expand to html
    Plug 'mattn/emmet-vim'
    
    " change surrounding quotes/tags/brackets   
    Plug 'tpope/vim-surround'

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

    "LaTeX
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()
