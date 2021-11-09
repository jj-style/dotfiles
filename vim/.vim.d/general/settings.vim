set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments
syntax on                               " Enables syntax highlighing
"set hidden                             " Required to keep multiple buffers open multiple buffers
"set nowrap                              " Display long lines as just one line
set whichwrap+=<,>,[,],h,l
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Line numbers
set relativenumber                      " relative line numbers
"set cursorline                          " Enable highlighting of the current line
"set background=dark                     " tell vim what the background color looks like
colorscheme desert                      " set colorscheme
set showtabline=1                       " Always show tabs if more than one
set nocompatible                        " This is required by vimwiki
filetype plugin on                      " This is required by vimwiki
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
"set timeoutlen=100                     " By default timeoutlen is 1000 ms
"set clipboard=unnamedplus               " Copy paste between vim and everything else
filetype indent on                      " identify file types and load indent files
"set lazyredraw                          " don't redraw screen when running macros
set showmatch                           " show matched parantheses
set foldenable                          " allow folding code blocks
set foldlevelstart=10                   " fold deep blocks by default
set foldmethod=indent                   " python
set hlsearch                            " highlight search results
set noshowmode                          " We don't need to see things like -- INSERT -- anymore


" clipboard cross platform for Mac
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif
