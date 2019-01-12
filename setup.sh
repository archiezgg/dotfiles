# update & upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# vim
sudo apt-get install -y vim

# docker
sudo apt-get install -y docker.io

# java
sudo apt-get install -y openjdk-8-jdk
sudo apt-get install -y openjdk-8-jre

# python
sudo apt-get install -y python
sudo apt-get install -y python-pip

# thefuck
sudo apt-get install -y python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck

# expect interpreter
sudo apt-get install -y expect

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# kdocker for spotify
sudo apt-get install kdocker -y

# zsh and oh-my-zsh
sudo apt-get install -y zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo chsh -s $(which zsh)

# placing config files where they belong
sudo cp -r configs/home/. $HOME
