.PHONY: help
help:						## show this help
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

.PHONY: all
all: bash vim tmux				## copy all config

.PHONY: bash
bash: .bashrc $(shell find .bash.d -type f)	## copy bash config
	@cp -r .bashrc .bash.d $(HOME)

.PHONY: vim	
vim: .vimrc $(shell find .vim.d -type f)	## copy vim config
	@cp -r .vimrc .vim.d $(HOME)

.PHONY: tmux	
tmux: .tmux.conf				## copy tmux configx
	@cp .tmux.conf $(HOME)
	@git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	@~/.tmux/plugins/tpm/bin/install_plugins



