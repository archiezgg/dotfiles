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

# zsh and oh-my-zsh
sudo aptitude install -y zsh
sudo chsh -s $(which zsh)
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# atom
sudo aptitude install -y atom

# placing config files where they belong
sudo cp configs/
