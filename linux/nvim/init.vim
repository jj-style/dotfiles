source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

source $HOME/.config/nvim/plug-config/emmet-vim.vim
source $HOME/.config/nvim/plug-config/vim-airline.vim
source $HOME/.config/nvim/plug-config/vimwiki.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/ranger.vim
source $HOME/.config/nvim/plug-config/closetags.vim

"language specific
autocmd FileType python setl makeprg=python3\ %
autocmd Filetype perl setl makeprg=perl\ %
autocmd FileType javascript setl makeprg=node\ %
autocmd FileType javascript,javascript.jsx,css,html,json setl shiftwidth=2 tabstop=2

"set .jsx filetypes to javascript.jsx
au BufNewFile,BufRead *.jsx	setf javascript.jsx
