# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/archiez/.oh-my-zsh"

# ZSH_THEME="afowler"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source $HOME/.profile
PROMPT='%{${fg_bold[blue]}%}%n %{${reset_color}%}%{${fg[blue]}%}golang/ %{$reset_color%}%{${fg[red]}%}%3~ $(git_prompt_info)%{${fg_bold[yellow]}%}%{${reset_color}%}%{${fg[blue]}%}»%{${reset_color}%} '

# f*ck plugin settings
eval $(thefuck --alias)
