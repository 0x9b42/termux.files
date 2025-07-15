fastfetch
deps=(starship zoxide)

for i in ${deps[@]}
do
  [ ! $(command -v $i) ] && {
    apt update
    apt upgrade -y
    apt install ${deps[@]}
  } && break
done

plugins=(
~/.local/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
~/.local/plugins/F-Sy-H/F-Sy-H.plugin.zsh
)

for i in ${plugins[@]}
do
  [ -f $i ] && . $i
done

unset plugins

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=999999999

setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY

alias zshrc='vi ~/.zshrc'
alias q=exit
alias c=clear
alias l='eza --icons'
alias la='l -a'
alias ll='l -l'
alias lt='l --tree'
alias ..='cd ..'
alias ...='cd ../..'
alias t=task
alias ta='task add'
alias td='task done'

PATH=$PATH:~/.local/bin
