sudo cp $HOME/.profile $HOME/.zshrc $HOME/.vimrc $HOME/.bashrc $HOME/.gitconfig $HOME/.dotfiles/configs/home
sudo cd $HOME/.dotfiles
git commit -am "chore(setup): generally refreshing dotfiles content" 
$HOME/Documents/scripts/gitpush.sh
