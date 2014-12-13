.PHONY: install configure dirs

configure:
	sudo add-apt-repository ppa:webupd8team/atom
	sudo add-apt-repository ppa:indicator-brightness/ppa
	sudo apt-get update -y
	sudo apt-get install -y git vim zsh stow
	sudo chsh -s `which zsh`

install:
	sudo apt-get install -y git vim zsh stow
	sudo apt-get install -y tree moreutils wipe meld shutter nmap wireshark redshift-gtk
	sudo apt-get install -y chromium-browser atom docker.io
	sudo apt-get install -y golang
	sudo apt-get install -y python-pip python-dev python-virtualenv virtualenvwrapper python-ipdb python-tox python-sphinx ipython ipython-qtconsole ipython-notebook
	sudo apt-get install -y virtualbox virtualbox-guest-\*

install-basic:
	sudo apt-get install -y make git vim zsh stow

install-manual:
	android-studio google-web-designer arduino

applets:
	sudo apt-get install indicator-brightness

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
	terminal: shortcuts for copy, paste, tabs: new, close, open
	terminal and atom: change new tab, close tab shortcuts
	atom plugins
	github ssh-keys
