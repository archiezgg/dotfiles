#!/bin/bash

sudo cp $HOME/.profile $HOME/.zshrc $HOME/.vimrc $HOME/.bashrc $HOME/.gitconfig $HOME/.dotfiles/configs/home
cd $HOME/.dotfiles
git add -A
git commit -m "fix(update): regular update initiated by bash script"
git push origin master
