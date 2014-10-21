.PHONY: configure dirs

install:
	sudo apt-get install -y git vim zsh tree stow

install-cloud:
	sudo pip install awscli

install-utils:
	sudo apt-get install -y git vim zsh tree shred moreutils wipe meld shutter
	sudo apt-get install -y chromium-browser atom

install-python:
	sudo apt-get install -y python-pip python-virtualenv ipython python-ipdb python-tox python-sphinx
	sudo pip install virtualenvwrapper httpie

install-apps:
	sudo apt-get install shutter meld chromium-browser

install-web:
	install android-studio google-web-designer arduino evernote-client
	install shutter meld chromium-browser redshift redshift-gtk

configure:
	sudo chsh -s `which zsh`

configure-git:
	git config --global user.name "Obulpathi"
	git config --global user.email obulpathi@gmail.com
	git config --global core.editor "vim"
	git config --global color.ui auto
	git config --global alias.unadd "reset HEAD"

configure-atom:
	#git config --global user.name "Obulpathi"
	#git config --global user.email obulpathi@gmail.com

dirs:
	mv ~/Desktop ~/.desktop
	mv ~/Downloads ~/downloads
	mv ~/Documents ~/documents
	mv ~/Music ~/music
	mv ~/Pictures ~/pictures
	mv ~/Public ~/public
	mv ~/Templates ~/.templates
	mv ~/Videos ~/videos
	rm ~/examples.desktop

configure-manual:
	terminal: change the copy and paste shortcuts
	terminal and atom: change new tab, close tab shortcuts
	atom plugins
