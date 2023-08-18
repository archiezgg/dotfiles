# If you come from bash you might have to change your $PATH.
# Path to your oh-my-zsh installation.
  export ZSH="/home/archiez/.oh-my-zsh"

ZSH_THEME="afowler"

plugins=(
  git
)

get_return_status_symbol() {
    if [ $? -eq 0 ]; then
        echo "%F{green}✓%f"   # Green checkmark
    else
        echo "%F{red}✗%f"     # Red x mark
    fi
}

source $ZSH/oh-my-zsh.sh
PROMPT='%{${fg_bold[blue]}%}%n %{${reset_color}%}%{${fg[blue]}%}🐧 %d $(get_return_status_symbol) $(git_prompt_info)%{${fg_bold[yellow]}%}%{${reset_color}%}%{${fg[blue]}%}»%{${reset_color}%} '

# kubectl autocompletion
source <(kubectl completion zsh)

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# aliases
alias tg="terragrunt"
alias tf="terraform"
