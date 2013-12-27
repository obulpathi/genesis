confdir = config
iconsdir = iconsdir
scriptsdir = scripts

.PHONY: configure dirs

install:
	sudo apt-get install git vim zsh tree

installall:
	sudo apt-get install git vim zsh tree shred python

configure:
	cp config/zshrc ~/.zshrc
	cp config/bashrc ~/.bashrc
	cp config/vimrc ~/.vimrc
	cp config/gitconfig ~/.gitconfig
	sudo chsh -s `which zsh`

dirs:
	cp others/user-dirs.dirs ~/.config/user-dirs.dirs
	mv ~/Desktop ~/desktop
	mv ~/Downloads ~/downloads
	mv ~/Documents ~/documents
	mv ~/Music ~/music
	mv ~/Pictures ~/pictures
	mv ~/Public ~/public
	mv ~/Templates ~/.templates
	mv ~/Videos ~/videos
	rm ~/examples.desktop
