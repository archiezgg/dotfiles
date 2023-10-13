# If you come from bash you might have to change your $PATH.
# Path to your oh-my-zsh installation.
  export ZSH="/home/archiez/.oh-my-zsh"

ZSH_THEME="afowler"

plugins=(
  git
)

get_truncated_path() {
    local path
    local truncated_path
    path=$(pwd)
    truncated_path=$(echo "$path" | /usr/bin/sed "s|^$HOME|~|;s|/\([^/]\+\)/\([^/]\+\)/\([^/]\+\)$|/\1/\2/\3|" | /usr/bin/awk -F/ '{ if (NF > 5) { print ".../" $(NF-1) "/" $(NF) } else { print $0 } }')
    echo "$truncated_path"
}

get_return_status_symbol() {
    if [ $? -eq 0 ]; then
        echo "%F{green}✓%f"   # Green checkmark
    else
        echo "%F{red}✗%f"     # Red x mark
    fi
}

source $ZSH/oh-my-zsh.sh
PROMPT='%{${fg_bold[blue]}%}%n %{${reset_color}%}%{${fg[blue]}%}🐧 $(get_truncated_path) $(get_return_status_symbol) $(git_prompt_info)%{${fg_bold[yellow]}%}%{${reset_color}%}%{${fg[blue]}%}»%{${reset_color}%} '

# kubectl autocompletion
source <(kubectl completion zsh)

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
source ~/.profile

# aliases
alias tg="terragrunt"
alias tf="terraform"
