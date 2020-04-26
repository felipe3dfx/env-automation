#---------------------------------------------
# Aliases
#---------------------------------------------

alias vimdiff="nvim -d"
alias r="source ~/.zshrc"

#---------------------------------------------
# Apps
#---------------------------------------------

alias e="$EDITOR"
alias sed=gsed
alias cat=batcat
alias ls=exa

alias l="ls -1"
alias c="clear"
alias md="mkdir -p"

# Docker
alias docker_clean="docker system prune --all --volumes"

tm() {
  tmux attach || tmux new
}

alias tmks="tmux kill-server"

alias my_ip="curl ifconfig.me/ip"

#---------------------------------------------
# Docker
#---------------------------------------------

alias dps="docker ps"