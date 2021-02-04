source $HOME/.vim.d/general/settings.vim
source $HOME/.vim.d/vim-plug/plugins.vim
source $HOME/.vim.d/keys/mappings.vim

source $HOME/.vim.d/plug-config/emmet-vim.vim
source $HOME/.vim.d/plug-config/vim-airline.vim
source $HOME/.vim.d/plug-config/vimwiki.vim
source $HOME/.vim.d/plug-config/ranger.vim
source $HOME/.vim.d/plug-config/closetags.vim

"language specific
au FileType python setl makeprg=python3\ %
au Filetype perl setl makeprg=perl\ %
au FileType javascript setl makeprg=node\ %

"set .jsx filetypes to javascript.jsx
au BufNewFile,BufRead *.jsx	setf javascript.jsx
