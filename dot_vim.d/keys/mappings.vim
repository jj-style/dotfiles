"basic keybindings

"leader key
let mapleader=","

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <leader><space> :nohlsearch<CR>

"fold code blocks with space bar
nnoremap <space> za

" copy-paste
vnoremap <C-C> :w !xclip -i -sel c<CR><CR>

" split windows
nnoremap sh :split<Return><C-w>W
nnoremap sv :vsplit<Return><C-w>W
nnoremap sx :close<Return><C-w>W

" moving windows
nnoremap <silent> <C-J> <C-W><C-J>
nnoremap <silent> <C-K> <C-W><C-K>
nnoremap <silent> <C-L> <C-W><C-L>
nnoremap <silent> <C-H> <C-W><C-H>

" searching stuff
" basically grep
nmap // :BLines<CR>
" grep with preview
nmap <leader>/ :Lines<CR>
" search across directory
nmap ?? :Rg<CR>
" search for files
nmap <leader>f :Files<CR>
nmap <leader>p :History<CR>
" search for word under cursor across files
nnoremap <silent> <leader>w :Rg <C-R>=expand("<cword>")<CR><CR>
" search on some syntax
nnoremap <leader>b :BTags<CR>
nnoremap <leader>c :Commands<CR>
nnoremap <leader>t :Filetypes<CR>

"substitute under cursor
nmap <leader>r :%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>

" git fugitive
nnoremap <leader>gs :Git<cr>
nnoremap <leader>gc :Git commit<cr>
nnoremap <leader>ga :Gwrite<cr>
nnoremap <leader>gl :Git log --pretty<cr>
nnoremap <leader>gd :Git diff<cr>
nnoremap <leader>g> :Git push<cr>
nnoremap <leader>g< :Git pull<cr>
