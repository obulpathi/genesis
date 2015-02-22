.PHONY: install configure dirs

configure:
	sudo apt-add-repository -y "http://archive.canonical.com/ubuntu partner"
	sudo add-apt-repository -y ppa:webupd8team/atom
	sudo apt-add-repository -y ppa:bitcoin/bitcoin
	sudo add-apt-repository -y ppa:fossfreedom/rhythmbox-plugins
	sudo apt-get update -y
	sudo apt-get install -y git vim zsh stow
	sudo chsh -s `which zsh`

install:
	sudo apt-get install -y git vim zsh stow
	sudo apt-get install -y tree moreutils wipe meld shutter nmap wireshark redshift-gtk
	sudo apt-get install -y chromium-browser atom docker.io
	sudo apt-get install -y golang
	sudo apt-get install -y virtualbox virtualbox-guest-\*
	sudo apt-get install -y filezilla
	sudo apt-get install -y rhythmbox-plugin-coverart-browser picard
	sudo apt-get install -y google-chrome-unstable google-cloud-sdk
	sudo apt-get install -y apt-file apt-utils apt-venv apt-watch apt-show-versions
	git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

install-basic:
	sudo apt-get install -y make git vim zsh stow

install-python:
	sudo apt-get install -y python-pip python-tox python-sphinx python-dev
	sudo apt-get install -y python-virtualenv virtualenvwrapper
	sudo apt-get install -y python-numpy python-scipy python-sympy python-matplotlib python-pandas
	sudo apt-get install -y ipython python-ipdb ipython-qtconsole ipython-notebook
	sudo apt-get install -y blockchain

install-java:
	sudo apt-get install default-jre default-jdk
	sudo update-alternatives --config java
	echo JAVA_HOME="/usr/lib/jvm/java-6-openjdk-amd64" >> /etc/environment
	source /etc/environment

install-bitcoin:
	sudo apt-get install -y bitcoind bitcoin-qt bitcoin-cli

install-manual:
	android-studio google-web-designer arduino

applets:
	sudo apt-get install indicator-brightness indicator-multiload

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
	atom-plugins github-ssh-keys
