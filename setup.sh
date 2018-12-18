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

# atom
sudo add-apt-repository ppa:webupd8team/atom
sudo aptitude install -y atom

# chromium
sudo aptitude install -y chromium-browser

# expect interpreter
sudo aptitude install -y expect

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# placing config files where they belong
sudo cp -r configs/home/. $HOME

# zsh and oh-my-zsh
sudo aptitude install -y zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo chsh -s $(which zsh)
