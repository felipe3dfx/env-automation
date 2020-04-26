#---------------------------------------------
# Plugins 
#---------------------------------------------
export NVM_LAZY_LOAD=true
source $ZPLUG_HOME/init.zsh

zplug "plugins/vi-mode", from:oh-my-zsh
zplug "plugins/fzf", from:oh-my-zsh
zplug "plugins/git",   from:oh-my-zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions", depth:1
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

zplug "rupa/z", use:z.sh

zplug "lukechilds/zsh-nvm"

if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load