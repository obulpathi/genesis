confdir = config
iconsdir = iconsdir
scriptsdir = scripts

.PHONY: configure

default:
	echo "Tell me what to do"

install:
	sudo apt-get install git vim zsh tree

installall:
	sudo apt-get install git vim zsh tree shred python

configure:
	cp config/zshrc ~/.zshrc
	cp config/bashrc ~/.bashrc
	cp config/vimrc ~/.vimrc
	cp config/gitconfig ~/.gitconfig
	chsh -s `which zsh`
