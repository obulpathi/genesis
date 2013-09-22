confdir = config
iconsdir = iconsdir
scriptsdir = scripts

.PHONY: configure

default:
	echo "Tell me what to do"

install:
	sudo apt-get install git vim zsh tree shred

installall:
	sudo apt-get install git vim zsh tree shred python

configure:
	cd config
	cp zshrc ~/.zshrc
	cp bashrc ~/.bashrc
	cp vimrc ~/.vimrc
	cp gitconfig ~/.gitconfig
