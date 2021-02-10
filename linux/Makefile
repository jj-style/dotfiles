.PHONY: help
help:						## show this help
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

.PHONY: all
all: bash vim tmux inputrc			## copy all config

.PHONY: bash
bash: .bashrc $(shell find .bash.d -type f)	## copy bash config
	@echo "# >>>>> INSERTED FROM jj-style/dotfiles" >> ~/.bashrc
	@cat .bashrc >> ~/.bashrc
	@echo "# <<<<< END OF INSERTED BLOCK" >> ~/.bashrc
	@cp -r .bash.d ~

.PHONY: vim	
vim: .vimrc $(shell find .vim.d -type f)	## copy vim config
	@if [ ! -f ~/.vim/autoload/plug.vim ]; then\
		curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim ;\
	fi
	@cp -r .vimrc .vim.d $(HOME)
	@vim +'PlugInstall --sync' +qa

.PHONY: tmux	
tmux: .tmux.conf				## copy tmux config
	@cp .tmux.conf $(HOME)
	@if [ ! -d ~/.tmux/plugins/ ]; then\
		git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm ;\
	fi
	@~/.tmux/plugins/tpm/bin/install_plugins

.PHONY: inputrc
inputrc: .inputrc				## copy inputrc config
	@cat .inputrc >> ~/.inputrc 
