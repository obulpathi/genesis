.PHONY: configure dirs

install:
	sudo apt-get install -y git vim zsh tree stow editorconfig

install-cloud:
	sudo pip install awscli

install-utils:
	sudo apt-get install -y git vim zsh tree shred moreutils wipe meld shutter
	sudo apt-get install -y chromium-browser atom

install-python:
	sudo apt-get install -y python-pip python-virtualenv ipython python-ipdb python-tox python-dev build-essential
	sudo pip install virtualenvwrapper httpie joe "ipython[notebook]"

install-atom-packages:
	apm install editorconfig jupyter-notebook file-icons

install-apps:
	sudo apt-get install shutter meld chromium-browser

install-web:
	install android-studio google-web-designer arduino evernote-client
	install shutter meld chromium-browser redshift redshift-gtk

install-ethereum:
	sudo add-apt-repository ppa:ethereum/ethereum-qt
	sudo add-apt-repository ppa:ethereum/ethereum
	sudo apt-get update
	sudo apt-get install cpp-ethereum

configure:
	sudo apt-add-repository -y "http://archive.canonical.com/ubuntu partner"
	sudo add-apt-repository -y ppa:webupd8team/atom
	sudo add-apt-repository -y ppa:webupd8team/java
	sudo apt-add-repository -y ppa:bitcoin/bitcoin
	sudo add-apt-repository -y ppa:fossfreedom/rhythmbox-plugins
	sudo apt-add-repository -y ppa:paolorotolo/android-studio
	sudo apt-add-repository -y ppa:no1wantdthisname/openjdk-fontfix
	sudo apt-get update -y
	sudo apt-get install -y git vim zsh stow
	sudo chsh -s `which zsh`

configure-git:
	git config --global user.name "Obulpathi"
	git config --global user.email obulpathi@gmail.com
	git config --global core.editor "vim"
	git config --global color.ui auto
	git config --global clean.requireForce false
	git config --global push.default simple
	git config --global gitreview.username obulpathi
	git config --global credential.helper "cache --timeout=3600"
	git config --global alias.unadd "reset HEAD"
	git config --global alias.unstage "reset --"
	git config --global alias.changed 'show --pretty="format:" --name-only --oneline'

configure-dirs:
	mv ~/Desktop ~/.desktop
	mv ~/Downloads ~/downloads
	mv ~/Documents ~/documents
	mv ~/Music ~/music
	mv ~/Pictures ~/pictures
	mv ~/Public ~/public
	mv ~/Templates ~/.templates
	mv ~/Videos ~/videos
	rm ~/examples.desktop

install:
	sudo apt-get install -y git vim zsh stow
	sudo apt-get install -y tree moreutils wipe meld shutter nmap wireshark tmux redshift-gtk
	sudo apt-get install -y chromium-browser atom
	sudo apt-get install -y docker.io
	sudo apt-get install -y golang scala
	sudo apt-get install -y virtualbox virtualbox-guest-\*
	sudo apt-get install -y git-review filezilla
	sudo apt-get install -y rhythmbox-plugin-coverart-browser picard
	sudo apt-get install -y google-chrome-stable google-cloud-sdk android-studio
	sudo apt-get install -y apt-file apt-utils apt-venv apt-watch apt-show-versions
	sudo pip install --upgrade google-api-python-client awscli boto3 pyrax docker-compose clf
	sudo pip install --upgrade python-openstacksdk python-openstackclient
	sudo pip install --upgrade powerline-status
	git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

install-basic:
	sudo apt-get install -y make git vim zsh stow

install-cloud:
	sudo apt-get install -y mongodb redis neo4j

install-python:
	sudo apt-get install -y python-pip python-tox python-sphinx python-dev
	sudo apt-get install -y python-virtualenv virtualenvwrapper
	sudo apt-get install -y python-numpy python-scipy python-sympy python-matplotlib python-pandas
	sudo apt-get install -y ipython python-ipdb ipython-qtconsole ipython-notebook
	sudo apt-get install -y python-flask python-jinja2 python-django
	sudo apt-get install -y powerline-status blockchain

install-java:
	sudo apt-get install default-jre default-jdk bsh
	sudo update-alternatives --config java
	sudo echo JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64" >> /etc/environment
	source /etc/environment

install-oracle-java:
	sudo apt-get install -y oracle-java7-installer
	echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
	sudo update-java-alternatives -s java-7-oracle

install-dart:
	sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
	sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
	sudo apt-get update && sudo apt-get install dart

install-intellij:
	# download intellij
	tar xfz ~/download/intellij.tar.gz -C /tmp
	sudo mv /tmp/idea-IC-* /opt/idea
	#sudo desktop-file-install ~/.desktop/idea.desktop
	sudo ln -s /opt/idea/bin/idea.sh /usr/local/bin/idea.sh
	sudo cp /opt/idea/bin/idea.png /usr/share/pixmaps/idea.png

configure-powerline:
	wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
	mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
	fc-cache -vf ~/.fonts
	mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

install-bitcoin:
	sudo apt-get install -y bitcoind bitcoin-qt bitcoin-cli

install-manual:
	android-studio google-web-designer arduino

install-applets:
	sudo apt-get install indicator-brightness indicator-multiload

configure-manual:
	terminal: shortcuts for copy, paste, reset and clear, tabs: new, close, open
	terminal and atom: change new tab, close tab shortcuts
	atom-plugins github-ssh-keys
