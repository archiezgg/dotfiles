# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/archiez/.oh-my-zsh"

ZSH_THEME="bira"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# f*ck plugin settings
eval $(thefuck --alias)
