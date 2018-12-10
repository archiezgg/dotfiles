# update & upgrade
sudo apt-get install aptitude
sudo aptitude update -y
sudo aptitude upgrade -y

# vim
sudo aptitude install -y vim

# docker
sudo aptitude install -y docker.io

# java
sudo aptitude install -y openjdk-8-jdk
sudo aptitude install -y openjdk-8-jre

# python
sudo aptitude install -y python
sudo aptitude install -y python-pip

# thefuck
sudo aptitude install -y python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck

# zsh and oh-my-zsh
sudo aptitude install -y zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo chsh -s $(which zsh)

# atom
sudo aptitude-repository ppa:webupd8team/atom
sudo aptitude install atom

# placing config files where they belong
sudo cp -r configs/home/. $HOME

# chromium
sudo aptitude install -y chromium-browser
