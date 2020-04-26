#---------------------------------------------
# Exports
#---------------------------------------------

export LANG=en_US.UTF-8

export NODE_MODULES_BIN=./node_modules/.bin
export ZPLUG_HOME={{ ZPLUG_HOME }}
export PATH=$HOME/bin:/usr/local/bin:$PATH:$NODE_MODULES_BIN:$HOME/.local/bin:$HOME/.cargo/bin

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="nvim"
fi

export SSH_KEY_PATH=~/.ssh/rsa_id

export FZF_BASE={{ FZF_BASE }}
export FZF_DEFAULT_COMMAND="rg --files --hidden"
