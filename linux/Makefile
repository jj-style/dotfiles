.PHONY: help
help:						## show this help
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

.PHONY: all
all: bash vim tmux				## copy all config

.PHONY: bash
#cp -r .bashrc .bash.d $(HOME)
bash: .bashrc $(shell find .bash.d -type f)	## copy bash config
	@echo "copying bash"

.PHONY: vim	
vim: .vimrc $(shell find .vim.d -type f)	## copy vim config
	@echo "copying vim"

.PHONY: tmux	
tmux: .tmux.conf				## copy tmux configx
	@echo "copying tmux"



