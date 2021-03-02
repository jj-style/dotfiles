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
nmap sh :split<Return><C-w>W
nmap sv :vplit<Return><C-w>W
nmap sx :close<Return><C-w>W

" moving windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

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
nnoremap <leader>w :Rg <C-R>=expand("<cword>")<CR><CR>
nnorema <leader>x :Windows!<CR>
" search on some syntax
nnoremap <leader>b :BTags<CR>
nnoremap <leader>c :Commands<CR>
nnoremap <leader>t :Filetypes<CR>

"substitute under cursor
nmap <leader>r :%s/<<C-r><C-w\>/<C-r><C-w>/gI<Left><Left><Left>

" git fugitive
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>ga :Gwrite<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>g> :Gpush<cr>
nnoremap <leader>g< :Gpull<cr>
