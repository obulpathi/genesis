confdir = config
iconsdir = iconsdir
scriptsdir = scripts

.PHONY: configure dirs

install:
	sudo apt-get install git vim zsh tree python-pip

installbasic:
	sudo apt-get install git vim zsh tree

installcloud:
	ssh-keygen -t rsa -b 2048
	sudo apt-get install juju
	sudo add-apt-repository ppa:juju/stable
	sudo apt-get update && sudo apt-get install juju-local
	sudo pip install awscli

installall:
	sudo apt-get install git vim zsh tree shred moreutils wipe meld shutter 

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
