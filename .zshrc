eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source ~/.local/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.local/plugins/F-Sy-H/F-Sy-H.plugin.zsh

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
