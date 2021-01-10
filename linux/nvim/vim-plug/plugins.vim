call plug#begin('~/.local/share/nvim/plugged')
    "Plug 'davidhalter/jedi-vim'
    "Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
    "Plug 'zchee/deoplete-jedi'
    "Plug 'wokalski/autocomplete-flow'
    
    "bar at bottom + theme
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " close quotes and brackets when opened
    Plug 'jiangmiao/auto-pairs'

    " close tags
    Plug 'alvan/vim-closetag'
    
    " comment toggle
    Plug 'scrooloose/nerdcommenter'
    
    " personal wiki
    Plug 'vimwiki/vimwiki'
    
    " expand to html
    Plug 'mattn/emmet-vim'
    
    " change surrounding quotes/tags/brackets   
    Plug 'tpope/vim-surround'

    " prettier for vim
    Plug 'prettier/vim-prettier', { 'do': 'npm install' }
    
    " code highlighting for JS and JSX
    Plug 'yuezk/vim-js'
    Plug 'mxw/vim-jsx'

    " code completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " ranger file explorer
    Plug 'Mizuchi/vim-ranger'
call plug#end()
